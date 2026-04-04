import 'dart:async';
import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetryAttempts;
  final Duration retryInterval;

  const RetryInterceptor({
    required this.dio,
    this.maxRetryAttempts = 1,
    this.retryInterval = const Duration(seconds: 1),
  });

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final requestOptions = err.requestOptions;
    final retryCount = requestOptions.extra['retry_count'] as int? ?? 0;

    final shouldRetry = _shouldRetry(err) &&
        retryCount < maxRetryAttempts &&
        err.requestOptions.method == 'GET';

    if (!shouldRetry) {
      return super.onError(err, handler);
    }

    requestOptions.extra['retry_count'] = retryCount + 1;
    await Future<void>.delayed(retryInterval);
    try {
      final response = await dio.fetch<dynamic>(requestOptions);
      handler.resolve(response);
    } on DioException catch (e) {
      handler.reject(e);
    }
  }

  bool _shouldRetry(DioException error) =>
      error.type == DioExceptionType.connectionTimeout ||
      error.type == DioExceptionType.receiveTimeout ||
      error.type == DioExceptionType.sendTimeout;
}
