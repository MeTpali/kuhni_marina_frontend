import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/campaign/campaign_create_request/campaign_create_request_dto.dart';
import '../../dto/campaign/campaign_delete_response/campaign_delete_response_dto.dart';
import '../../dto/campaign/campaign_list_response/campaign_list_response_dto.dart';
import '../../dto/campaign/campaign_response/campaign_response_dto.dart';
import '../../dto/campaign/campaign_update_request/campaign_update_request_dto.dart';

class CampaignsRemoteService {
  final Dio _dio;
  const CampaignsRemoteService(this._dio);

  static const String _path = '/api/v1/campaigns';

  Future<ResponseResult<CampaignListResponseDto>> getCampaigns({
    required String token,
    int? page,
    int? pageSize,
    bool? includeInactive,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (page != null) queryParams['page'] = page;
      if (pageSize != null) queryParams['page_size'] = pageSize;
      if (includeInactive != null) queryParams['include_inactive'] = includeInactive;

      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        queryParameters: queryParams.isNotEmpty ? queryParams : null,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CampaignListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CampaignListResponseDto>(e);
    }
  }

  Future<ResponseResult<CampaignResponseDto>> createCampaign({
    required String token,
    required CampaignCreateRequestDto request,
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
          CampaignResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CampaignResponseDto>(e);
    }
  }

  Future<ResponseResult<CampaignResponseDto>> getCampaignById({
    required String token,
    required int campaignId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$campaignId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CampaignResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CampaignResponseDto>(e);
    }
  }

  Future<ResponseResult<CampaignResponseDto>> updateCampaign({
    required String token,
    required int campaignId,
    required CampaignUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$campaignId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CampaignResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CampaignResponseDto>(e);
    }
  }

  Future<ResponseResult<CampaignDeleteResponseDto>> deleteCampaign({
    required String token,
    required int campaignId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$campaignId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          CampaignDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<CampaignDeleteResponseDto>(e);
    }
  }
}
