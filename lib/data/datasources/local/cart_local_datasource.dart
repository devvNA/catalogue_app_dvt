import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/error/exceptions.dart';
import '../../models/cart_item_model.dart';

abstract class CartLocalDataSource {
  Future<List<CartItemModel>> getCartItems();
  Future<void> addToCart(int productId);
  Future<void> removeFromCart(int productId);
  Future<void> updateQuantity(int productId, int quantity);
  Future<void> clearCart();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String cartKey = 'CART_ITEMS';

  CartLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<List<CartItemModel>> getCartItems() async {
    try {
      final jsonString = sharedPreferences.getString(cartKey);
      if (jsonString != null) {
        final List<dynamic> jsonList = json.decode(jsonString);
        return jsonList
            .map((json) => CartItemModel.fromJson(json))
            .toList();
      }
      return [];
    } catch (e) {
      throw CacheException('Failed to get cart items');
    }
  }

  @override
  Future<void> addToCart(int productId) async {
    try {
      final cartItems = await getCartItems();
      final existingIndex = cartItems.indexWhere(
        (item) => item.productId == productId,
      );

      if (existingIndex != -1) {
        final updatedItem = CartItemModel(
          productId: productId,
          quantity: cartItems[existingIndex].quantity + 1,
        );
        cartItems[existingIndex] = updatedItem;
      } else {
        cartItems.add(CartItemModel(productId: productId, quantity: 1));
      }

      await _saveCartItems(cartItems);
    } catch (e) {
      throw CacheException('Failed to add to cart');
    }
  }

  @override
  Future<void> removeFromCart(int productId) async {
    try {
      final cartItems = await getCartItems();
      cartItems.removeWhere((item) => item.productId == productId);
      await _saveCartItems(cartItems);
    } catch (e) {
      throw CacheException('Failed to remove from cart');
    }
  }

  @override
  Future<void> updateQuantity(int productId, int quantity) async {
    try {
      final cartItems = await getCartItems();
      final index = cartItems.indexWhere((item) => item.productId == productId);

      if (index != -1) {
        if (quantity <= 0) {
          await removeFromCart(productId);
        } else {
          cartItems[index] = CartItemModel(
            productId: productId,
            quantity: quantity,
          );
          await _saveCartItems(cartItems);
        }
      }
    } catch (e) {
      throw CacheException('Failed to update quantity');
    }
  }

  @override
  Future<void> clearCart() async {
    try {
      await sharedPreferences.remove(cartKey);
    } catch (e) {
      throw CacheException('Failed to clear cart');
    }
  }

  Future<void> _saveCartItems(List<CartItemModel> items) async {
    final jsonList = items.map((item) => item.toJson()).toList();
    final jsonString = json.encode(jsonList);
    await sharedPreferences.setString(cartKey, jsonString);
  }
}
