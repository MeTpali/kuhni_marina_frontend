import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/session/guest_session_ack_response/guest_session_ack_response_dto.dart';

class SessionService {
  final Dio _dio;
  const SessionService(this._dio);

  static const String _path = '/api/v1/session';

  Future<ResponseResult<void>> getSession() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        _path,
        options: Options(extra: {'session_query': true}),
      );

      if (response.statusCode == 200 && response.data != null) {
        final dto = GuestSessionAckResponseDto.fromJson(response.data!);
        if (dto.ok) {
          return const ResponseResult.success(null);
        }
        return ResponseResult.error(
          ResponseError.server(
            'Не удалось получить сессию',
            response.statusCode,
          ),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<void>(e);
    }
  }
}
