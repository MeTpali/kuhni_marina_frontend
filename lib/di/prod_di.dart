import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
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
}

Talker _setupTalker() => TalkerFlutter.init(settings: TalkerSettings());

Dio _setupDio(Talker talker) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://venera.gennadiy.site/api/v1',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.addAll([
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        hiddenHeaders: {'set-cookie', 'Cookie'},
      ),
    ),
  ]);

  return dio;
}
