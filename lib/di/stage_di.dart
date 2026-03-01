import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../routing/app_router.dart';
import 'di.dart';
import 'stage_repos.dart';

void configureStageDependencies() {
  /// Определение типа билда
  getIt.registerSingleton<BuildType>(BuildType.staging);

  /// Настройка логгера
  getIt.registerSingleton<Talker>(_setupTalker());

  /// Настройка навигации
  getIt.registerSingleton<RootStackRouter>(AppRouter());

  /// Настройка Dio
  getIt.registerSingleton<Dio>(_setupDio(getIt<Talker>()));

  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  setupStageRepos();
}

Talker _setupTalker() => TalkerFlutter.init(
  settings: TalkerSettings(colors: {TalkerKey.verbose: AnsiPen()..yellow()}),
);

Dio _setupDio(Talker talker) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://gennadiy.site/venera/',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.addAll([
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(printRequestHeaders: true),
    ),
  ]);

  return dio;
}
