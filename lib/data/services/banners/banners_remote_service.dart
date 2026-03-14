
import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/banner/banner_create_request/banner_create_request_dto.dart';
import '../../dto/banner/banner_delete_response/banner_delete_response_dto.dart';
import '../../dto/banner/banner_list_response/banner_list_response_dto.dart';
import '../../dto/banner/banner_response/banner_response_dto.dart';
import '../../dto/banner/banner_update_request/banner_update_request_dto.dart';

class BannersRemoteService {
  final Dio _dio;
  const BannersRemoteService(this._dio);

  static const String _path = '/api/v1/banners';

  Future<ResponseResult<BannerListResponseDto>> getBanners() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(_path);

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BannerListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BannerListResponseDto>(e);
    }
  }

  Future<ResponseResult<BannerResponseDto>> createBanner({
    required BannerCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(BannerResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BannerResponseDto>(e);
    }
  }

  Future<ResponseResult<BannerResponseDto>> getBannerById({
    required int bannerId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('$_path/$bannerId');

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(BannerResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BannerResponseDto>(e);
    }
  }

  Future<ResponseResult<BannerResponseDto>> updateBanner({
    required int bannerId,
    required BannerUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$bannerId',
        data: request.toJson(),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(BannerResponseDto.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BannerResponseDto>(e);
    }
  }

  Future<ResponseResult<BannerDeleteResponseDto>> deleteBanner({
    required int bannerId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>('$_path/$bannerId');

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          BannerDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<BannerDeleteResponseDto>(e);
    }
  }
}
