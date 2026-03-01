import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/product_image/product_image_create_request/product_image_create_request_dto.dart';
import '../../dto/product_image/product_image_delete_response/product_image_delete_response_dto.dart';
import '../../dto/product_image/product_image_list_response/product_image_list_response_dto.dart';
import '../../dto/product_image/product_image_response/product_image_response_dto.dart';

class ProductImagesRemoteService {
  final Dio _dio;
  const ProductImagesRemoteService(this._dio);

  static const String _path = '/api/v1/product-images';

  Future<ResponseResult<ProductImageListResponseDto>> getProductImages({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductImageListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductImageListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductImageResponseDto>> createProductImage({
    required String token,
    required ProductImageCreateRequestDto request,
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
          ProductImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductImageResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductImageResponseDto>> getProductImageById({
    required String token,
    required int productImageId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$productImageId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductImageResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductImageDeleteResponseDto>> deleteProductImage({
    required String token,
    required int productImageId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$productImageId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductImageDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductImageDeleteResponseDto>(e);
    }
  }
}
