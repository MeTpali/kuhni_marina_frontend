import 'dart:async';

import '../repositories/session/session_repository.dart';
import '../services/session/session_service.dart';

/// Единый источник получения и обновления сессии.
/// Гарантирует, что одновременно выполняется не более одного запроса на сессию.
/// Запрос сессии идёт через [SessionService], кэш — в [SessionRepository].
class SessionProvider {
  final SessionService _sessionService;
  final SessionRepository _sessionRepository;

  Future<void>? _ensureSessionFuture;
  String? _session;
  final StreamController<String?> _sessionStreamController;

  SessionProvider({
    required SessionService sessionService,
    required SessionRepository sessionRepository,
  }) : _sessionService = sessionService,
       _sessionRepository = sessionRepository,
       _sessionStreamController = StreamController<String?>.broadcast();

  Stream<String?> get sessionStream => _sessionStreamController.stream;

  Future<void> ensureSession() async {
    if (_session != null) {
      return;
    }

    if (_ensureSessionFuture != null) {
      return _ensureSessionFuture;
    }

    final completer = Completer<String?>();
    _ensureSessionFuture = completer.future;

    try {
      final session = await _loadSession();
      if (session != null) {
        completer.complete(session);
        _setSession(session);
        return;
      }
      completer.complete();
    } on Exception catch (e) {
      completer.completeError(e);
      rethrow;
    } finally {
      _ensureSessionFuture = null;
    }
    return;
  }

  /// Возвращает информацию о сессии из хранилища
  Future<String?> getSession() async {
    await ensureSession();
    return _session;
  }

  Future<String?> _loadSession() async {
    final existing = await _sessionRepository.getSessionId();
    final session = existing.mapOrNull(success: (r) => r.value);

    if (session != null) {
      return session;
    }

    final result = await _sessionService.getSession();

    await result.whenOrNull(
      success: (model) async {
        if (_session != null) {
          await _sessionRepository.setSessionId(_session!);
        }
      },
    );

    return _session;
  }

  Future<void> setSessionId(String sessionId) async {
    await _sessionRepository.setSessionId(sessionId);
    _setSession(sessionId);
  }

  void _setSession(String? session) {
    _session = session;
    _sessionStreamController.add(session);
  }

  /// Сбрасывает сессию в репозитории (например, при выходе).
  Future<void> clearCache() async {
    await _sessionRepository.clear();
    _setSession(null);
  }

  Future<void> dispose() async {
    await _sessionStreamController.close();
  }
}
