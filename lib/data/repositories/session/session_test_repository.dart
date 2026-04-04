import '../../../core/entities/result/result.dart';
import 'session_repository.dart';

class SessionTestRepository implements SessionRepository {
  String _sessionId = '938730ef-647d-45d2-a450-2c1999524878';

  @override
  Future<Result<String>> getSessionId() async => Result.success(_sessionId);

  @override
  Future<Result<void>> setSessionId(String sessionId) async {
    _sessionId = sessionId;
    return const Result.success(null);
  }

  @override
  Future<Result<void>> clear() async {
    _sessionId = '';
    return const Result.success(null);
  }
}
