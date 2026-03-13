import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/project/project_create_request/project_create_request_dto.dart';
import '../../dto/project/project_delete_response/project_delete_response_dto.dart';
import '../../dto/project/project_detail_response/project_detail_response_dto.dart';
import '../../dto/project/project_list_response/project_list_response_dto.dart';
import '../../dto/project/project_response/project_response_dto.dart';
import '../../dto/project/project_update_request/project_update_request_dto.dart';

class ProjectsRemoteService {
  final Dio _dio;
  const ProjectsRemoteService(this._dio);

  static const String _path = '/api/v1/projects';

  Future<ResponseResult<ProjectListResponseDto>> getProjects({
    required String token,
    int? page,
    int? pageSize,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['page_size'] = pageSize;

      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectListResponseDto>> getProjectsByProductId({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/product/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectDetailResponseDto>> getProjectById({
    required String token,
    required int projectId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$projectId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectDetailResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectDetailResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectResponseDto>> createProject({
    required String token,
    required ProjectCreateRequestDto request,
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
          ProjectResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectResponseDto>> updateProject({
    required String token,
    required int projectId,
    required ProjectUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$projectId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectDeleteResponseDto>> deleteProject({
    required String token,
    required int projectId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$projectId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectDeleteResponseDto>(e);
    }
  }
}
