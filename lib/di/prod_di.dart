import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../data/interceptors/retry_interceptor.dart';
import '../data/interceptors/session_interceptor.dart';
import '../data/providers/session_provider.dart';
import '../data/repositories/session/session_repository.dart';
import '../data/services/session/session_service.dart';
import '../routing/app_router.dart';
import 'di.dart';
import 'prod_repos.dart';

void configureProdDependencies() {
  /// Тип билда
  getIt.registerSingleton<BuildType>(BuildType.production);

  /// Логгер
  getIt.registerSingleton<Talker>(_setupTalker());

  /// Навигация
  getIt.registerSingleton<RootStackRouter>(AppRouter());

  /// Secure storage
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  /// Dio
  getIt.registerSingleton<Dio>(_setupDio(getIt<Talker>()));

  setupProdRepos();

  /// Настройка SessionProvider
  getIt.registerSingleton<SessionProvider>(
    SessionProvider(
      sessionService: getIt<SessionService>(),
      sessionRepository: getIt<SessionRepository>(),
    ),
    dispose: (provider) async => provider.dispose(),
  );

  _setupInterceptors(getIt<Dio>(), getIt<Talker>());
}

Talker _setupTalker() => TalkerFlutter.init(settings: TalkerSettings());

Dio _setupDio(Talker talker) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.0.109:8000',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  return dio;
}

void _setupInterceptors(Dio dio, Talker talker) {
  dio.interceptors.addAll([
    SessionInterceptor(sessionProvider: getIt<SessionProvider>()),
    RetryInterceptor(dio: dio),
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printRequestData: false,
        hiddenHeaders: {'set-cookie', 'Cookie', 'sessionid'},
      ),
    ),
  ]);
}
