import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../models/measure_request/measure_request_create_request.dart';
import '../../../models/measure_request/measure_request_list_response.dart';
import '../../../models/measure_request/measure_request_response.dart';
import '../../../models/measure_request/measure_request_status_update_request.dart';
import '../../../models/measure_request/measure_request_update_request.dart';
import '../../../models/measure_request_status/measure_request_status.dart';

class MeasureRequestsRemoteService {
  final Dio _dio;
  const MeasureRequestsRemoteService(this._dio);

  static const String _path = '/api/v1/measure-requests';

  Future<ResponseResult<MeasureRequestListResponse>> getMeasureRequests({
    required String token,
    MeasureRequestStatus? status,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (status != null) {
        queryParams['status'] = status.name;
      }

      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestListResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestListResponse>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponse>> createMeasureRequest({
    required String token,
    required MeasureRequestCreateRequest request,
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
          MeasureRequestResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponse>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponse>> getMeasureRequestById({
    required String token,
    required int measureRequestId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$measureRequestId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponse>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponse>> updateMeasureRequest({
    required String token,
    required int measureRequestId,
    required MeasureRequestUpdateRequest request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$measureRequestId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponse>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponse>> updateMeasureRequestStatus({
    required String token,
    required int measureRequestId,
    required MeasureRequestStatusUpdateRequest request,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '$_path/$measureRequestId/status',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestResponse.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponse>(e);
    }
  }
}
