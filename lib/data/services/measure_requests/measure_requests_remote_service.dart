import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/measure_request/measure_request_create_request/measure_request_create_request_dto.dart';
import '../../dto/measure_request/measure_request_list_response/measure_request_list_response_dto.dart';
import '../../dto/measure_request/measure_request_response/measure_request_response_dto.dart';
import '../../dto/measure_request/measure_request_status_enum.dart';
import '../../dto/measure_request/measure_request_status_update_request/measure_request_status_update_request_dto.dart';
import '../../dto/measure_request/measure_request_update_request/measure_request_update_request_dto.dart';

class MeasureRequestsRemoteService {
  final Dio _dio;
  const MeasureRequestsRemoteService(this._dio);

  static const String _path = '/api/v1/measure-requests';

  Future<ResponseResult<MeasureRequestListResponseDto>> getMeasureRequests({
    required String token,
    MeasureRequestStatusEnum? status,
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
          MeasureRequestListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestListResponseDto>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponseDto>> createMeasureRequest({
    required String token,
    required MeasureRequestCreateRequestDto request,
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
          MeasureRequestResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponseDto>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponseDto>> getMeasureRequestById({
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
          MeasureRequestResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponseDto>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponseDto>> updateMeasureRequest({
    required String token,
    required int measureRequestId,
    required MeasureRequestUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$measureRequestId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponseDto>(e);
    }
  }

  Future<ResponseResult<MeasureRequestResponseDto>>
  updateMeasureRequestStatusDto({
    required String token,
    required int measureRequestId,
    required MeasureRequestStatusUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '$_path/$measureRequestId/status',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          MeasureRequestResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<MeasureRequestResponseDto>(e);
    }
  }
}
