import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts({
    required int page,
    required int limit,
  });

  Future<Either<Failure, Product>> getProductById(int id);

  Future<Either<Failure, List<Product>>> searchProducts(String query);
}
