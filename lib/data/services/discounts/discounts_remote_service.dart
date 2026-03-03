import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/discount/discount_create_request/discount_create_request_dto.dart';
import '../../dto/discount/discount_delete_response/discount_delete_response_dto.dart';
import '../../dto/discount/discount_list_response/discount_list_response_dto.dart';
import '../../dto/discount/discount_response/discount_response_dto.dart';
import '../../dto/discount/discount_scope_dto.dart';
import '../../dto/discount/discount_type_dto.dart';
import '../../dto/discount/discount_update_request/discount_update_request_dto.dart';
import '../../dto/product/product_type_dto.dart';

class DiscountsRemoteService {
  final Dio _dio;
  const DiscountsRemoteService(this._dio);

  static const String _path = '/api/v1/discounts';

  Future<ResponseResult<DiscountListResponseDto>> getDiscounts({
    required String token,
    int? page,
    int? pageSize,
    bool? includeInactive,
    DiscountScopeDto? scope,
    DiscountTypeDto? discountType,
    int? productId,
    int? categoryId,
    ProductTypeDto? productType,
    bool? isActive,
    String? sortBy,
    String? sortOrder,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['page_size'] = pageSize;
      if (includeInactive != null) queryParams['include_inactive'] = includeInactive;
      if (scope != null) queryParams['scope'] = scope.name;
      if (discountType != null) queryParams['discount_type'] = discountType.name;
      if (productId != null) queryParams['product_id'] = productId;
      if (categoryId != null) queryParams['category_id'] = categoryId;
      if (productType != null) queryParams['product_type'] = productType.name;
      if (isActive != null) queryParams['is_active'] = isActive;
      if (sortBy != null) queryParams['sort_by'] = sortBy;
      if (sortOrder != null) queryParams['sort_order'] = sortOrder;

      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: queryParams.isNotEmpty ? queryParams : null,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          DiscountListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<DiscountListResponseDto>(e);
    }
  }

  Future<ResponseResult<DiscountResponseDto>> createDiscount({
    required String token,
    required DiscountCreateRequestDto request,
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
          DiscountResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<DiscountResponseDto>(e);
    }
  }

  Future<ResponseResult<DiscountResponseDto>> getDiscountById({
    required String token,
    required int discountId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$discountId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          DiscountResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<DiscountResponseDto>(e);
    }
  }

  Future<ResponseResult<DiscountResponseDto>> updateDiscount({
    required String token,
    required int discountId,
    required DiscountUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$discountId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          DiscountResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<DiscountResponseDto>(e);
    }
  }

  Future<ResponseResult<DiscountDeleteResponseDto>> deleteDiscount({
    required String token,
    required int discountId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$discountId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          DiscountDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<DiscountDeleteResponseDto>(e);
    }
  }
}
