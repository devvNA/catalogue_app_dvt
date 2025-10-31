import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.freezed.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = LoadCart;
  const factory CartEvent.addToCart(int productId) = AddToCartEvent;
  const factory CartEvent.removeFromCart(int productId) = RemoveFromCart;
  const factory CartEvent.updateQuantity(int productId, int quantity) = UpdateQuantity;
  const factory CartEvent.clearCart() = ClearCart;
}
