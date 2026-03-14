import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/category/category_create_request/category_create_request_dto.dart';
import '../../dto/category/category_delete_response/category_delete_response_dto.dart';
import '../../dto/category/category_list_response/category_list_response_dto.dart';
import '../../dto/category/category_response/category_response_dto.dart';
import '../../dto/category/category_type_dto.dart';
import '../../dto/category/category_update_request/category_update_request_dto.dart';

class CategoriesRemoteService {
  final Dio _dio;
  const CategoriesRemoteService(this._dio);

  static const String _path = '/api/v1/categories';

  Future<ResponseResult<CategoryListResponseDto>> getCategories() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CategoryListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryListResponseDto>(e);
    }
  }

  Future<ResponseResult<CategoryListResponseDto>> getCategoriesByType({
    required CategoryTypeDto categoryType,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/type/${categoryType.name}',
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CategoryListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryListResponseDto>(e);
    }
  }

  Future<ResponseResult<CategoryResponseDto>> createCategory({
    required CategoryCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          CategoryResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryResponseDto>(e);
    }
  }

  Future<ResponseResult<CategoryResponseDto>> getCategoryById({
    required int categoryId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$categoryId',
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CategoryResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryResponseDto>(e);
    }
  }

  Future<ResponseResult<CategoryResponseDto>> updateCategory({
    required int categoryId,
    required CategoryUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$categoryId',
        data: request.toJson(),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CategoryResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryResponseDto>(e);
    }
  }

  Future<ResponseResult<CategoryDeleteResponseDto>> deleteCategory({
    required int categoryId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$categoryId',
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CategoryDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CategoryDeleteResponseDto>(e);
    }
  }
}
