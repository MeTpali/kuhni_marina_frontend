import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/background_image/background_image_create_request/background_image_create_request_dto.dart';
import '../../dto/background_image/background_image_delete_response/background_image_delete_response_dto.dart';
import '../../dto/background_image/background_image_list_response/background_image_list_response_dto.dart';
import '../../dto/background_image/background_image_response/background_image_response_dto.dart';
import '../../dto/background_image/background_image_update_request/background_image_update_request_dto.dart';

class BackgroundImagesRemoteService {
  const BackgroundImagesRemoteService(this._dio);

  final Dio _dio;

  static const String _path = '/api/v1/background-images';

  Future<ResponseResult<BackgroundImageListResponseDto>>
  getBackgroundImages() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(_path);

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BackgroundImageListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BackgroundImageListResponseDto>(e);
    }
  }

  Future<ResponseResult<BackgroundImageResponseDto>> createBackgroundImage({
    required BackgroundImageCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          BackgroundImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BackgroundImageResponseDto>(e);
    }
  }

  Future<ResponseResult<BackgroundImageResponseDto>> getBackgroundImageById({
    required int backgroundImageId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$backgroundImageId',
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BackgroundImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BackgroundImageResponseDto>(e);
    }
  }

  Future<ResponseResult<BackgroundImageResponseDto>> updateBackgroundImage({
    required int backgroundImageId,
    required BackgroundImageUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$backgroundImageId',
        data: request.toJson(),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BackgroundImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BackgroundImageResponseDto>(e);
    }
  }

  Future<ResponseResult<BackgroundImageDeleteResponseDto>> deleteBackgroundImage({
    required int backgroundImageId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$backgroundImageId',
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BackgroundImageDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BackgroundImageDeleteResponseDto>(e);
    }
  }
}
