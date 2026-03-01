import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/review/review_create_request/review_create_request_dto.dart';
import '../../dto/review/review_delete_response/review_delete_response_dto.dart';
import '../../dto/review/review_list_response/review_list_response_dto.dart';
import '../../dto/review/review_response/review_response_dto.dart';
import '../../dto/review/review_update_request/review_update_request_dto.dart';

class ReviewsRemoteService {
  final Dio _dio;
  const ReviewsRemoteService(this._dio);

  static const String _path = '/api/v1/reviews';

  Future<ResponseResult<ReviewListResponseDto>> getReviews({
    required String token,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ReviewListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewListResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewListResponseDto>> getReviewsByProductId({
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
          ReviewListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewListResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewResponseDto>> createReview({
    required String token,
    required ReviewCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(ReviewResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewResponseDto>> getReviewById({
    required String token,
    required int reviewId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$reviewId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(ReviewResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewResponseDto>> updateReview({
    required String token,
    required int reviewId,
    required ReviewUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$reviewId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(ReviewResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewResponseDto>> approveReview({
    required String token,
    required int reviewId,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '$_path/$reviewId/approve',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(ReviewResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewResponseDto>(e);
    }
  }

  Future<ResponseResult<ReviewDeleteResponseDto>> deleteReview({
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
          ReviewDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ReviewDeleteResponseDto>(e);
    }
  }
}
