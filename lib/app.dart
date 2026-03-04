import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/constants/app_fonts.dart';
import 'core/constants/app_keys.dart';
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
      fontFamily: AppFonts.inter,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4A7155)),
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
