import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/entities/result/result.dart';
import 'session_repository.dart';

class SessionSecureRepository implements SessionRepository {
  final FlutterSecureStorage _storage;
  SessionSecureRepository(this._storage);

  static const _key = 'session_id';

  @override
  Future<Result<String>> getSessionId() async {
    try {
      final sessionId = await _storage.read(key: _key);
      if (sessionId == null || sessionId.isEmpty) {
        return const Result.error('Сессия не найдена');
      }
      return Result.success(sessionId);
    } on PlatformException catch (e) {
      return Result.error(e.message ?? 'Ошибка чтения сессии');
    } on Object catch (_) {
      return const Result.error('Неверный формат сессии');
    }
  }

  @override
  Future<Result<void>> setSessionId(String sessionId) async {
    try {
      await _storage.write(key: _key, value: sessionId);
      return const Result.success(null);
    } on PlatformException catch (e) {
      return Result.error(e.message ?? 'Ошибка записи сессии');
    }
  }

  @override
  Future<Result<void>> clear() async {
    try {
      await _storage.delete(key: _key);
      return const Result.success(null);
    } on PlatformException catch (e) {
      return Result.error(e.message ?? 'Ошибка');
    }
  }
}
