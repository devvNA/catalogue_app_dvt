import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/product.dart';

part 'product_list_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = _Initial;
  const factory ProductListState.loading() = _Loading;
  const factory ProductListState.loadingMore(List<Product> products) = _LoadingMore;
  const factory ProductListState.loaded({
    required List<Product> products,
    required bool hasReachedMax,
  }) = _Loaded;
  const factory ProductListState.error(String message) = _Error;
  const factory ProductListState.searching() = _Searching;
  const factory ProductListState.searchResult(List<Product> products) = _SearchResult;
}
