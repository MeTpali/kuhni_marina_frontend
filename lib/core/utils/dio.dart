import 'package:dio/dio.dart';

import '../entities/response_result/response_result.dart';

abstract class DioUtils {
  static ResponseResult<T> handleDioException<T>(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ResponseResult<T>.error(
          const ResponseError.network('Connection timeout'),
        );
      case DioExceptionType.receiveTimeout:
        return ResponseResult<T>.error(
          const ResponseError.network('Receive timeout'),
        );
      case DioExceptionType.sendTimeout:
        return ResponseResult<T>.error(
          const ResponseError.network('Send timeout'),
        );
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        String message = 'Server error';
        if (exception.response?.data != null) {
          if (exception.response?.data is Map<String, dynamic>) {
            message =
                (exception.response!.data as Map<String, dynamic>)['message']
                    .toString();
          } else if (exception.response?.data is String) {
            message = exception.response!.data.toString();
          }
        }
        return ResponseResult<T>.error(
          ResponseError.server(message, statusCode),
        );
      case DioExceptionType.cancel:
        return ResponseResult<T>.error(
          const ResponseError.unexpected('Request was cancelled'),
        );
      case DioExceptionType.badCertificate:
        return ResponseResult<T>.error(
          ResponseError.unexpected('Unexpected error: ${exception.message}'),
        );
      case DioExceptionType.connectionError:
        return ResponseResult<T>.error(
          const ResponseError.network('Connection error'),
        );
      case DioExceptionType.unknown:
        return ResponseResult<T>.error(
          ResponseError.unexpected('Unexpected error: ${exception.message}'),
        );
    }
  }
}
