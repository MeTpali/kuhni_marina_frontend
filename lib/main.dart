import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import 'app.dart';
import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await initializeDateFormatting('ru_RU', null);

  final buildType = BuildType.fromString(
    const String.fromEnvironment('flavor'),
  );

  configureDependencies(buildType);

  final talker = getIt<Talker>();

  FlutterError.onError = (details) =>
      talker.error('Ошибка в Flutter', details.exception, details.stack);

  PlatformDispatcher.instance.onError = (error, stack) {
    talker.error('Ошибка на уровне платформы', error, stack);
    return true;
  };

  talker.debug('Running app build type: $buildType');

  runApp(
    ProviderScope(
      observers: [
        TalkerRiverpodObserver(
          talker: talker,
          settings: const TalkerRiverpodLoggerSettings(
            printProviderDisposed: true,
          ),
        ),
      ],
      child: const KuhniMarinaApp(),
    ),
  );
}
