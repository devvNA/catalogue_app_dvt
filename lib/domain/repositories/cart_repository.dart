import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entities/cart_item.dart';

abstract class CartRepository {
  Future<Either<Failure, List<CartItem>>> getCartItems();
  
  Future<Either<Failure, Unit>> addToCart(int productId);
  
  Future<Either<Failure, Unit>> removeFromCart(int productId);
  
  Future<Either<Failure, Unit>> updateQuantity(int productId, int quantity);
  
  Future<Either<Failure, Unit>> clearCart();
}
