import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.freezed.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.loadProducts() = LoadProducts;
  const factory ProductListEvent.loadMoreProducts() = LoadMoreProducts;
  const factory ProductListEvent.searchProducts(String query) = SearchProducts;
  const factory ProductListEvent.refreshProducts() = RefreshProducts;
}
