import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/project_product/project_ids_by_product_response.dart';
import '../../../models/project_product/project_product_create_request.dart';
import '../../../models/project_product/project_product_delete_response.dart';
import '../../../models/project_product/project_product_list_response.dart';
import '../../../models/project_product/project_product_response.dart';

class ProjectProductsRemoteService {
  final Dio _dio;
  const ProjectProductsRemoteService(this._dio);

  static const String _path = '/api/v1/project-products';

  Future<ResponseResult<ProjectProductListResponse>> getProjectProducts({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectProductListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductListResponse>(e);
    }
  }

  Future<ResponseResult<ProjectProductResponse>> createProjectProduct({
    required String token,
    required ProjectProductCreateRequest request,
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
          ProjectProductResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductResponse>(e);
    }
  }

  Future<ResponseResult<ProjectIdsByProductResponse>> getProjectIdsByProductId({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/product/$productId/projects',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectIdsByProductResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectIdsByProductResponse>(e);
    }
  }

  Future<ResponseResult<ProjectProductDeleteResponse>> deleteProjectProduct({
    required String token,
    required int projectId,
    required int productId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$projectId/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectProductDeleteResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductDeleteResponse>(e);
    }
  }
}
