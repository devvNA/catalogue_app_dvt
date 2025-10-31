// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() refreshProducts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? refreshProducts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? loadMoreProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? refreshProducts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(RefreshProducts value) refreshProducts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(RefreshProducts value)? refreshProducts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(RefreshProducts value)? refreshProducts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
    ProductListEvent value,
    $Res Function(ProductListEvent) then,
  ) = _$ProductListEventCopyWithImpl<$Res, ProductListEvent>;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res, $Val extends ProductListEvent>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadProductsImplCopyWith<$Res> {
  factory _$$LoadProductsImplCopyWith(
    _$LoadProductsImpl value,
    $Res Function(_$LoadProductsImpl) then,
  ) = __$$LoadProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProductsImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$LoadProductsImpl>
    implements _$$LoadProductsImplCopyWith<$Res> {
  __$$LoadProductsImplCopyWithImpl(
    _$LoadProductsImpl _value,
    $Res Function(_$LoadProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProductsImpl implements LoadProducts {
  const _$LoadProductsImpl();

  @override
  String toString() {
    return 'ProductListEvent.loadProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() refreshProducts,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? refreshProducts,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? loadMoreProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? refreshProducts,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(RefreshProducts value) refreshProducts,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(RefreshProducts value)? refreshProducts,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(RefreshProducts value)? refreshProducts,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class LoadProducts implements ProductListEvent {
  const factory LoadProducts() = _$LoadProductsImpl;
}

/// @nodoc
abstract class _$$LoadMoreProductsImplCopyWith<$Res> {
  factory _$$LoadMoreProductsImplCopyWith(
    _$LoadMoreProductsImpl value,
    $Res Function(_$LoadMoreProductsImpl) then,
  ) = __$$LoadMoreProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProductsImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$LoadMoreProductsImpl>
    implements _$$LoadMoreProductsImplCopyWith<$Res> {
  __$$LoadMoreProductsImplCopyWithImpl(
    _$LoadMoreProductsImpl _value,
    $Res Function(_$LoadMoreProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreProductsImpl implements LoadMoreProducts {
  const _$LoadMoreProductsImpl();

  @override
  String toString() {
    return 'ProductListEvent.loadMoreProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() refreshProducts,
  }) {
    return loadMoreProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? refreshProducts,
  }) {
    return loadMoreProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? loadMoreProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? refreshProducts,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(RefreshProducts value) refreshProducts,
  }) {
    return loadMoreProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(RefreshProducts value)? refreshProducts,
  }) {
    return loadMoreProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(RefreshProducts value)? refreshProducts,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts(this);
    }
    return orElse();
  }
}

abstract class LoadMoreProducts implements ProductListEvent {
  const factory LoadMoreProducts() = _$LoadMoreProductsImpl;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(
    _$SearchProductsImpl value,
    $Res Function(_$SearchProductsImpl) then,
  ) = __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
    _$SearchProductsImpl _value,
    $Res Function(_$SearchProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchProductsImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchProductsImpl implements SearchProducts {
  const _$SearchProductsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductListEvent.searchProducts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() refreshProducts,
  }) {
    return searchProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? refreshProducts,
  }) {
    return searchProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? loadMoreProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? refreshProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(RefreshProducts value) refreshProducts,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(RefreshProducts value)? refreshProducts,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(RefreshProducts value)? refreshProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class SearchProducts implements ProductListEvent {
  const factory SearchProducts(final String query) = _$SearchProductsImpl;

  String get query;

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshProductsImplCopyWith<$Res> {
  factory _$$RefreshProductsImplCopyWith(
    _$RefreshProductsImpl value,
    $Res Function(_$RefreshProductsImpl) then,
  ) = __$$RefreshProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshProductsImplCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$RefreshProductsImpl>
    implements _$$RefreshProductsImplCopyWith<$Res> {
  __$$RefreshProductsImplCopyWithImpl(
    _$RefreshProductsImpl _value,
    $Res Function(_$RefreshProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshProductsImpl implements RefreshProducts {
  const _$RefreshProductsImpl();

  @override
  String toString() {
    return 'ProductListEvent.refreshProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() refreshProducts,
  }) {
    return refreshProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? refreshProducts,
  }) {
    return refreshProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadProducts,
    TResult Function()? loadMoreProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? refreshProducts,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProducts value) loadProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(RefreshProducts value) refreshProducts,
  }) {
    return refreshProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProducts value)? loadProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(RefreshProducts value)? refreshProducts,
  }) {
    return refreshProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProducts value)? loadProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(RefreshProducts value)? refreshProducts,
    required TResult orElse(),
  }) {
    if (refreshProducts != null) {
      return refreshProducts(this);
    }
    return orElse();
  }
}

abstract class RefreshProducts implements ProductListEvent {
  const factory RefreshProducts() = _$RefreshProductsImpl;
}
