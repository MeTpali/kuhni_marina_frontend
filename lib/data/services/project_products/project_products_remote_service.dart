import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/project_product/project_ids_by_product_response/project_ids_by_product_response_dto.dart';
import '../../dto/project_product/project_product_create_request/project_product_create_request_dto.dart';
import '../../dto/project_product/project_product_delete_response/project_product_delete_response_dto.dart';
import '../../dto/project_product/project_product_list_response/project_product_list_response_dto.dart';
import '../../dto/project_product/project_product_response/project_product_response_dto.dart';

class ProjectProductsRemoteService {
  final Dio _dio;
  const ProjectProductsRemoteService(this._dio);

  static const String _path = '/api/v1/project-products';

  Future<ResponseResult<ProjectProductListResponseDto>> getProjectProducts({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProjectProductListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectProductResponseDto>> createProjectProduct({
    required String token,
    required ProjectProductCreateRequestDto request,
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
          ProjectProductResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectIdsByProductResponseDto>> getProjectIdsByProductId({
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
          ProjectIdsByProductResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectIdsByProductResponseDto>(e);
    }
  }

  Future<ResponseResult<ProjectProductDeleteResponseDto>> deleteProjectProduct({
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
          ProjectProductDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProjectProductDeleteResponseDto>(e);
    }
  }
}
