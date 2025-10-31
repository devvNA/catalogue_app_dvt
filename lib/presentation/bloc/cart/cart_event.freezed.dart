// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCartImplCopyWith<$Res> {
  factory _$$LoadCartImplCopyWith(
    _$LoadCartImpl value,
    $Res Function(_$LoadCartImpl) then,
  ) = __$$LoadCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartImpl>
    implements _$$LoadCartImplCopyWith<$Res> {
  __$$LoadCartImplCopyWithImpl(
    _$LoadCartImpl _value,
    $Res Function(_$LoadCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCartImpl implements LoadCart {
  const _$LoadCartImpl();

  @override
  String toString() {
    return 'CartEvent.loadCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) {
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) {
    return loadCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class LoadCart implements CartEvent {
  const factory LoadCart() = _$LoadCartImpl;
}

/// @nodoc
abstract class _$$AddToCartEventImplCopyWith<$Res> {
  factory _$$AddToCartEventImplCopyWith(
    _$AddToCartEventImpl value,
    $Res Function(_$AddToCartEventImpl) then,
  ) = __$$AddToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$AddToCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartEventImpl>
    implements _$$AddToCartEventImplCopyWith<$Res> {
  __$$AddToCartEventImplCopyWithImpl(
    _$AddToCartEventImpl _value,
    $Res Function(_$AddToCartEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null}) {
    return _then(
      _$AddToCartEventImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AddToCartEventImpl implements AddToCartEvent {
  const _$AddToCartEventImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.addToCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      __$$AddToCartEventImplCopyWithImpl<_$AddToCartEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) {
    return addToCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) {
    return addToCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements CartEvent {
  const factory AddToCartEvent(final int productId) = _$AddToCartEventImpl;

  int get productId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(
    _$RemoveFromCartImpl value,
    $Res Function(_$RemoveFromCartImpl) then,
  ) = __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
    _$RemoveFromCartImpl _value,
    $Res Function(_$RemoveFromCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null}) {
    return _then(
      _$RemoveFromCartImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements RemoveFromCart {
  const _$RemoveFromCartImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) {
    return removeFromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) {
    return removeFromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCart implements CartEvent {
  const factory RemoveFromCart(final int productId) = _$RemoveFromCartImpl;

  int get productId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(
    _$UpdateQuantityImpl value,
    $Res Function(_$UpdateQuantityImpl) then,
  ) = __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
    _$UpdateQuantityImpl _value,
    $Res Function(_$UpdateQuantityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? quantity = null}) {
    return _then(
      _$UpdateQuantityImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements UpdateQuantity {
  const _$UpdateQuantityImpl(this.productId, this.quantity);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateQuantity(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) {
    return updateQuantity(productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) {
    return updateQuantity?.call(productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(productId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantity implements CartEvent {
  const factory UpdateQuantity(final int productId, final int quantity) =
      _$UpdateQuantityImpl;

  int get productId;
  int get quantity;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
    _$ClearCartImpl value,
    $Res Function(_$ClearCartImpl) then,
  ) = __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
    _$ClearCartImpl _value,
    $Res Function(_$ClearCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCartImpl implements ClearCart {
  const _$ClearCartImpl();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCart,
    required TResult Function(int productId) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId, int quantity) updateQuantity,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCart,
    TResult? Function(int productId)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId, int quantity)? updateQuantity,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCart,
    TResult Function(int productId)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId, int quantity)? updateQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(AddToCartEvent value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(AddToCartEvent value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCart value)? loadCart,
    TResult Function(AddToCartEvent value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCartImpl;
}
