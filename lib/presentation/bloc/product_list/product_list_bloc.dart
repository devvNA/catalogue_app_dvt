import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_constants.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_products.dart';
import '../../../domain/usecases/search_products.dart' as use_case;
import 'product_list_event.dart';
import 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final GetProducts getProducts;
  final use_case.SearchProducts searchProducts;

  int _currentPage = 1;
  List<Product> _allProducts = [];
  bool _isSearching = false;

  ProductListBloc({required this.getProducts, required this.searchProducts})
    : super(const ProductListState.initial()) {
    on<LoadProducts>(_onLoadProducts);
    on<LoadMoreProducts>(_onLoadMoreProducts);
    on<SearchProducts>(_onSearchProducts);
    on<RefreshProducts>(_onRefreshProducts);
  }

  Future<void> _onLoadProducts(
    LoadProducts event,
    Emitter<ProductListState> emit,
  ) async {
    emit(const ProductListState.loading());

    final result = await getProducts(
      page: 1,
      limit: AppConstants.productsPerPage,
    );

    result.fold((failure) => emit(ProductListState.error(failure.message)), (
      products,
    ) {
      _currentPage = 1;
      _allProducts = products;
      emit(
        ProductListState.loaded(
          products: products,
          hasReachedMax: products.length < AppConstants.productsPerPage,
        ),
      );
    });
  }

  Future<void> _onLoadMoreProducts(
    LoadMoreProducts event,
    Emitter<ProductListState> emit,
  ) async {
    if (_isSearching) return;

    bool shouldReturn = false;
    state.maybeWhen(
      loaded: (products, hasReachedMax) {
        if (hasReachedMax) shouldReturn = true;
      },
      orElse: () {},
    );

    if (shouldReturn) return;

    emit(ProductListState.loadingMore(_allProducts));

    final result = await getProducts(
      page: _currentPage + 1,
      limit: AppConstants.productsPerPage,
    );

    result.fold(
      (failure) => emit(
        ProductListState.loaded(products: _allProducts, hasReachedMax: true),
      ),
      (products) {
        _currentPage++;
        _allProducts = [..._allProducts, ...products];
        emit(
          ProductListState.loaded(
            products: _allProducts,
            hasReachedMax: products.length < AppConstants.productsPerPage,
          ),
        );
      },
    );
  }

  Future<void> _onSearchProducts(
    SearchProducts event,
    Emitter<ProductListState> emit,
  ) async {
    if (event.query.isEmpty) {
      _isSearching = false;
      emit(
        ProductListState.loaded(
          products: _allProducts,
          hasReachedMax: _allProducts.length < AppConstants.productsPerPage,
        ),
      );
      return;
    }

    _isSearching = true;
    emit(const ProductListState.searching());

    await Future.delayed(AppConstants.searchDebounceTime);

    final result = await searchProducts(event.query);

    result.fold(
      (failure) => emit(ProductListState.error(failure.message)),
      (products) => emit(ProductListState.searchResult(products)),
    );
  }

  Future<void> _onRefreshProducts(
    RefreshProducts event,
    Emitter<ProductListState> emit,
  ) async {
    _isSearching = false;
    _currentPage = 1;
    _allProducts = [];

    final result = await getProducts(
      page: 1,
      limit: AppConstants.productsPerPage,
    );

    result.fold((failure) => emit(ProductListState.error(failure.message)), (
      products,
    ) {
      _allProducts = products;
      emit(
        ProductListState.loaded(
          products: products,
          hasReachedMax: products.length < AppConstants.productsPerPage,
        ),
      );
    });
  }
}
