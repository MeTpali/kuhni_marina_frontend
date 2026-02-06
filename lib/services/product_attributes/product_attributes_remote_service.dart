import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/product_attribute/product_attribute_create_request.dart';
import '../../../models/product_attribute/product_attribute_list_response.dart';
import '../../../models/product_attribute/product_attribute_response.dart';
import '../../../models/product_attribute/product_attribute_update_request.dart';

class ProductAttributesRemoteService {
  final Dio _dio;
  const ProductAttributesRemoteService(this._dio);

  static const String _path = '/api/v1/product-attributes';

  Future<ResponseResult<ProductAttributeListResponse>> getProductAttributes({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductAttributeListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeListResponse>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponse>> createProductAttribute({
    required String token,
    required ProductAttributeCreateRequest request,
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
          ProductAttributeResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponse>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponse>> getProductAttributeById({
    required String token,
    required int productId,
    required int attributeId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$productId/$attributeId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductAttributeResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponse>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponse>> updateProductAttribute({
    required String token,
    required int productId,
    required int attributeId,
    required ProductAttributeUpdateRequest request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$productId/$attributeId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductAttributeResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponse>(e);
    }
  }
}
