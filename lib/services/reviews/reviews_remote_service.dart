import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/review/review_create_request.dart';
import '../../../models/review/review_delete_response.dart';
import '../../../models/review/review_list_response.dart';
import '../../../models/review/review_response.dart';
import '../../../models/review/review_update_request.dart';

class ReviewsRemoteService {
  final Dio _dio;
  const ReviewsRemoteService(this._dio);

  static const String _path = '/api/v1/reviews';

  Future<ResponseResult<ReviewListResponse>> getReviews({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewListResponse>(e);
    }
  }

  Future<ResponseResult<ReviewListResponse>> getReviewsByProductId({
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
          ReviewListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewListResponse>(e);
    }
  }

  Future<ResponseResult<ReviewResponse>> createReview({
    required String token,
    required ReviewCreateRequest request,
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
          ReviewResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponse>(e);
    }
  }

  Future<ResponseResult<ReviewResponse>> getReviewById({
    required String token,
    required int reviewId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$reviewId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponse>(e);
    }
  }

  Future<ResponseResult<ReviewResponse>> updateReview({
    required String token,
    required int reviewId,
    required ReviewUpdateRequest request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$reviewId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponse>(e);
    }
  }

  Future<ResponseResult<ReviewResponse>> approveReview({
    required String token,
    required int reviewId,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '$_path/$reviewId/approve',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponse>(e);
    }
  }

  Future<ResponseResult<ReviewDeleteResponse>> deleteReview({
    required String token,
    required int reviewId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$reviewId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewDeleteResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewDeleteResponse>(e);
    }
  }
}
