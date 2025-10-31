import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';
import '../entities/product.dart';
import '../repositories/product_repository.dart';

class SearchProducts {
  final ProductRepository repository;

  SearchProducts(this.repository);

  Future<Either<Failure, List<Product>>> call(String query) async {
    return await repository.searchProducts(query);
  }
}
