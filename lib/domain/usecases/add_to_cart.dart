import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../repositories/cart_repository.dart';

class AddToCart {
  final CartRepository repository;

  AddToCart(this.repository);

  Future<Either<Failure, Unit>> call(int productId) async {
    return await repository.addToCart(productId);
  }
}
