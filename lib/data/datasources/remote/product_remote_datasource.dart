import 'package:dio/dio.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/error/exceptions.dart';
import '../../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts({required int page, required int limit});
  Future<ProductModel> getProductById(int id);
  Future<List<ProductModel>> getAllProducts();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ProductModel>> getProducts({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await dio.get(
        '${AppConstants.baseUrl}/products',
        queryParameters: {
          'limit': limit,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final startIndex = (page - 1) * limit;
        final endIndex = startIndex + limit;
        
        final paginatedData = data.sublist(
          startIndex,
          endIndex > data.length ? data.length : endIndex,
        );
        
        return paginatedData
            .map((json) => ProductModel.fromJson(json))
            .toList();
      } else {
        throw ServerException('Failed to load products');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ConnectionException('Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw ConnectionException('No internet connection');
      } else {
        throw ServerException(e.message ?? 'Server error');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<ProductModel> getProductById(int id) async {
    try {
      final response = await dio.get('${AppConstants.baseUrl}/products/$id');

      if (response.statusCode == 200) {
        return ProductModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to load product detail');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ConnectionException('Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw ConnectionException('No internet connection');
      } else {
        throw ServerException(e.message ?? 'Server error');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<ProductModel>> getAllProducts() async {
    try {
      final response = await dio.get('${AppConstants.baseUrl}/products');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        throw ServerException('Failed to load products');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ConnectionException('Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw ConnectionException('No internet connection');
      } else {
        throw ServerException(e.message ?? 'Server error');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
