import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/attribute/attribute_create_request/attribute_create_request_dto.dart';
import '../../dto/attribute/attribute_delete_response/attribute_delete_response_dto.dart';
import '../../dto/attribute/attribute_list_response/attribute_list_response_dto.dart';
import '../../dto/attribute/attribute_response/attribute_response_dto.dart';
import '../../dto/attribute/attribute_update_request/attribute_update_request_dto.dart';

class AttributesRemoteService {
  final Dio _dio;
  const AttributesRemoteService(this._dio);

  static const String _path = '/api/v1/attributes';

  Future<ResponseResult<AttributeListResponseDto>> getAttributes() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(_path);

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          AttributeListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<AttributeListResponseDto>(e);
    }
  }

  Future<ResponseResult<AttributeResponseDto>> createAttribute({
    required AttributeCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          AttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<AttributeResponseDto>(e);
    }
  }

  Future<ResponseResult<AttributeResponseDto>> getAttributeById({
    required int attributeId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('$_path/$attributeId');

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          AttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<AttributeResponseDto>(e);
    }
  }

  Future<ResponseResult<AttributeResponseDto>> updateAttribute({
    required int attributeId,
    required AttributeUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$attributeId',
        data: request.toJson(),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          AttributeResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<AttributeResponseDto>(e);
    }
  }

  Future<ResponseResult<AttributeDeleteResponseDto>> deleteAttribute({
    required int attributeId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>('$_path/$attributeId');

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          AttributeDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<AttributeDeleteResponseDto>(e);
    }
  }
}
