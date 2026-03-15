import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_keys.dart';
import 'core/theme/app_theme.dart';
import 'di/di.dart';

class KuhniMarinaApp extends ConsumerStatefulWidget {
  const KuhniMarinaApp({super.key});

  @override
  ConsumerState<KuhniMarinaApp> createState() => _KuhniMarinaAppState();
}

class _KuhniMarinaAppState extends ConsumerState<KuhniMarinaApp> {
  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      scaffoldMessengerKey: AppKeys.rootScaffoldMessengerKey,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('ru', 'RU')],
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: themeMode,
      builder: (context, child) {
        // Синхронизируем палитру AppColors с активной темой (зависит от themeMode).
        AppColors.updateBrightness(Theme.of(context).brightness);
        return child ?? const SizedBox.shrink();
      },
      routerConfig: getIt<RootStackRouter>().config(),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void dispose() {
    getIt<RootStackRouter>().dispose();
    super.dispose();
  }
}
