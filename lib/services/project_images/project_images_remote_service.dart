import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/project_image/project_image_create_bulk_request.dart';
import '../../../models/project_image/project_image_create_request.dart';
import '../../../models/project_image/project_image_delete_response.dart';
import '../../../models/project_image/project_image_list_response.dart';
import '../../../models/project_image/project_image_response.dart';

class ProjectImagesRemoteService {
  final Dio _dio;
  const ProjectImagesRemoteService(this._dio);

  static const String _path = '/api/v1/project-images';

  Future<ResponseResult<ProjectImageListResponse>> getProjectImages({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectImageListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageListResponse>(e);
    }
  }

  Future<ResponseResult<ProjectImageResponse>> createProjectImage({
    required String token,
    required ProjectImageCreateRequest request,
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
          ProjectImageResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageResponse>(e);
    }
  }

  Future<ResponseResult<ProjectImageListResponse>> createMultipleProjectImages({
    required String token,
    required ProjectImageCreateBulkRequest request,
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
          ProjectImageListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageListResponse>(e);
    }
  }

  Future<ResponseResult<ProjectImageResponse>> getProjectImageById({
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
          ProjectImageResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageResponse>(e);
    }
  }

  Future<ResponseResult<ProjectImageDeleteResponse>> deleteProjectImage({
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
          ProjectImageDeleteResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectImageDeleteResponse>(e);
    }
  }
}
