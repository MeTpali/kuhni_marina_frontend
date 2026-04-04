import '../../../core/entities/result/result.dart';

abstract class SessionRepository {
  /// Возвращает сохранённую информацию о сессии (из хранилища).
  Future<Result<String>> getSessionId();

  /// Сохраняет информацию о сессии.
  Future<Result<void>> setSessionId(String sessionId);

  /// Очищает сохранённую сессию.
  Future<Result<void>> clear();
}
