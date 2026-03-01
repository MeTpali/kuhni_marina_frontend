import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/project_image/project_image_create_bulk_request/project_image_create_bulk_request_dto.dart';
import '../../dto/project_image/project_image_create_request/project_image_create_request_dto.dart';
import '../../dto/project_image/project_image_delete_response/project_image_delete_response_dto.dart';
import '../../dto/project_image/project_image_list_response/project_image_list_response_dto.dart';
import '../../dto/project_image/project_image_response/project_image_response_dto.dart';

class ProjectImagesRemoteService {
  final Dio _dio;
  const ProjectImagesRemoteService(this._dio);

  static const String _path = '/api/v1/project-images';

  Future<ResponseResult<ProjectImageListResponseDto>> getProjectImages({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectImageListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectImageResponseDto>> createProjectImage({
    required String token,
    required ProjectImageCreateRequestDto request,
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
          ProjectImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectImageListResponseDto>> createMultipleProjectImages({
    required String token,
    required ProjectImageCreateBulkRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '$_path/bulk',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          ProjectImageListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectImageResponseDto>> getProjectImageById({
    required String token,
    required int projectImageId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$projectImageId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectImageResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectImageDeleteResponseDto>> deleteProjectImage({
    required String token,
    required int projectImageId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$projectImageId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectImageDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageDeleteResponseDto>(e);
    }
  }
}
