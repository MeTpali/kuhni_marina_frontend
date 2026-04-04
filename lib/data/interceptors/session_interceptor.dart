import 'package:dio/dio.dart';

import '../providers/session_provider.dart';

class SessionInterceptor extends Interceptor {
  final SessionProvider _sessionProvider;
  const SessionInterceptor({required SessionProvider sessionProvider})
    : _sessionProvider = sessionProvider;

  static const _cookieHeader = 'Cookie';
  static const _setCookieHeader = 'Set-Cookie';
  static const _cookieName = 'sessionid';

  /// Тот же UUID, что в cookie. На Flutter Web сервер читает этот заголовок, если Cookie не дошёл.
  static const _guestSessionRequestHeader = 'X-Guest-Session-Id';

  /// Ответ: читаем через Dio (регистр не важен).
  static const _guestSessionExposeHeader = 'x-guest-session-id';
  static const _sessionExtraHeader = 'session_query';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isSessionQuery = options.extra[_sessionExtraHeader] as bool? ?? false;
    if (isSessionQuery) {
      handler.next(options);
      return;
    }

    final result = await _sessionProvider.getSession();
    if (result != null) {
      options.headers[_cookieHeader] = '$_cookieName=$result';
      options.headers[_guestSessionRequestHeader] = result;
    }

    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    await _processCookies(response.headers);
    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response != null) {
      await _processCookies(err.response!.headers);
    }
    handler.next(err);
  }

  Future<void> _processCookies(Headers headers) async {
    final exposed = headers.value(_guestSessionExposeHeader);
    if (exposed != null && exposed.trim().isNotEmpty) {
      await _sessionProvider.setSessionId(exposed.trim());
      return;
    }

    final cookies = headers[_setCookieHeader];
    if (cookies == null) return;

    for (final cookie in cookies) {
      if (!cookie.contains(_cookieName)) {
        continue;
      }

      final sessionString = cookie
          .split(';')
          .firstWhere(
            (part) => part.trim().startsWith('$_cookieName='),
            orElse: () => '',
          );
      if (sessionString.length > 2) {
        final sessionId = sessionString.substring(_cookieName.length + 1);
        await _sessionProvider.setSessionId(sessionId);
      }
    }
  }
}
