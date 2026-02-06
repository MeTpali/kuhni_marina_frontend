import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/product/product_catalog_response.dart';
import '../../../models/product/product_create_request.dart';
import '../../../models/product/product_delete_response.dart';
import '../../../models/product/product_id_list_response.dart';
import '../../../models/product/product_response.dart';
import '../../../models/product/product_update_request.dart';

class ProductsRemoteService {
  final Dio _dio;
  const ProductsRemoteService(this._dio);

  static const String _path = '/api/v1/products';

  Future<ResponseResult<ProductCatalogResponse>> getProductCatalog({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['page_size'] = pageSize;
      if (categoryIds != null && categoryIds.isNotEmpty) {
        queryParams['category_ids'] = categoryIds;
      }
      if (attributeFilters != null) {
        queryParams['attribute_filters'] = attributeFilters;
      }

      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/catalog',
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductCatalogResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductCatalogResponse>(e);
    }
  }

  Future<ResponseResult<ProductIdListResponse>> getProductIds({
    required String token,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (categoryIds != null && categoryIds.isNotEmpty) {
        queryParams['category_ids'] = categoryIds;
      }
      if (attributeFilters != null) {
        queryParams['attribute_filters'] = attributeFilters;
      }

      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/ids',
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductIdListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductIdListResponse>(e);
    }
  }

  Future<ResponseResult<ProductResponse>> getProductById({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponse>(e);
    }
  }

  Future<ResponseResult<ProductResponse>> createProduct({
    required String token,
    required ProductCreateRequest request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          ProductResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponse>(e);
    }
  }

  Future<ResponseResult<ProductResponse>> updateProduct({
    required String token,
    required int productId,
    required ProductUpdateRequest request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$productId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponse>(e);
    }
  }

  Future<ResponseResult<ProductDeleteResponse>> deleteProduct({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductDeleteResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductDeleteResponse>(e);
    }
  }
}
