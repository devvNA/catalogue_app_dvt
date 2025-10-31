import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cart_item.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    required int productId,
    required int quantity,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  CartItem toEntity() {
    return CartItem(
      productId: productId,
      quantity: quantity,
    );
  }

  factory CartItemModel.fromEntity(CartItem entity) {
    return CartItemModel(
      productId: entity.productId,
      quantity: entity.quantity,
    );
  }
}
