import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/constants/app_colors.dart';
import 'core/constants/app_keys.dart';
import 'core/constants/app_typography.dart';
import 'di/di.dart';

class KuhniMarinaApp extends StatefulWidget {
  const KuhniMarinaApp({super.key});

  @override
  State<KuhniMarinaApp> createState() => _KuhniMarinaAppState();
}

class _KuhniMarinaAppState extends State<KuhniMarinaApp> {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        scaffoldMessengerKey: AppKeys.rootScaffoldMessengerKey,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [const Locale('ru', 'RU')],
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.light(
            primary: AppColors.primary,
            onPrimary: AppColors.onPrimary,
            primaryContainer: AppColors.primaryContainer,
            onPrimaryContainer: AppColors.onPrimaryContainer,
            secondary: AppColors.accent,
            onSecondary: AppColors.onAccent,
            surface: AppColors.surface,
            onSurface: AppColors.onSurface,
            onSurfaceVariant: AppColors.onSurfaceVariant,
            outline: AppColors.outline,
            error: AppColors.error,
            onError: AppColors.onError,
          ),
          scaffoldBackgroundColor: AppColors.background,
          textTheme: AppTypography.textTheme,
        ),
        routerConfig: getIt<RootStackRouter>().config(),
        debugShowCheckedModeBanner: false,
      );

  @override
  void dispose() {
    getIt<RootStackRouter>().dispose();
    super.dispose();
  }
}
