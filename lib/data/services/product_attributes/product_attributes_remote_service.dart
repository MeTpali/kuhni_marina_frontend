import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/product_attribute/product_attribute_create_request/product_attribute_create_request_dto.dart';
import '../../dto/product_attribute/product_attribute_list_response/product_attribute_list_response_dto.dart';
import '../../dto/product_attribute/product_attribute_response/product_attribute_response_dto.dart';
import '../../dto/product_attribute/product_attribute_update_request/product_attribute_update_request_dto.dart';

class ProductAttributesRemoteService {
  final Dio _dio;
  const ProductAttributesRemoteService(this._dio);

  static const String _path = '/api/v1/product-attributes';

  Future<ResponseResult<ProductAttributeListResponseDto>> getProductAttributes({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductAttributeListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponseDto>> createProductAttribute({
    required String token,
    required ProductAttributeCreateRequestDto request,
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
          ProductAttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponseDto>> getProductAttributeById({
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
          ProductAttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductAttributeResponseDto>> updateProductAttribute({
    required String token,
    required int productId,
    required int attributeId,
    required ProductAttributeUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$productId/$attributeId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductAttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductAttributeResponseDto>(e);
    }
  }
}
