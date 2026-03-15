import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_colors.dart';
import '../constants/app_typography.dart';

/// Режим темы приложения.
///
/// Переключение (когда будет кнопка):
/// ```dart
/// ref.read(themeModeProvider.notifier).state = ThemeMode.light;  // светлая
/// ref.read(themeModeProvider.notifier).state = ThemeMode.dark;   // тёмная
/// ref.read(themeModeProvider.notifier).state = ThemeMode.system; // как в системе
/// ```
/// По умолчанию [ThemeMode.system] (следовать за системой).
/// Для принудительной светлой темы: `ThemeMode.light`, тёмной: `ThemeMode.dark`.
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

/// Светлая и тёмная темы приложения.
abstract class AppThemes {
  AppThemes._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColorsLight.primary,
      onPrimary: AppColorsLight.onPrimary,
      primaryContainer: AppColorsLight.primaryContainer,
      onPrimaryContainer: AppColorsLight.onPrimaryContainer,
      secondary: AppColorsLight.accent,
      onSecondary: AppColorsLight.onAccent,
      surface: AppColorsLight.surface,
      onSurface: AppColorsLight.onSurface,
      onSurfaceVariant: AppColorsLight.onSurfaceVariant,
      outline: AppColorsLight.outline,
      error: AppColorsLight.error,
      onError: AppColorsLight.onError,
    ),
    scaffoldBackgroundColor: AppColorsLight.background,
    textTheme: AppTypography.textThemeWith(
      displayColor: AppColorsLight.onSurface,
      headlineColor: AppColorsLight.onSurface,
      titleColor: AppColorsLight.onSurface,
      bodyColor: AppColorsLight.onSurface,
      bodySecondaryColor: AppColorsLight.onSurfaceVariant,
      labelColor: AppColorsLight.onSurfaceVariant,
      captionColor: AppColorsLight.onSurfaceTertiary,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColorsDark.primaryVariant,
      onPrimary: AppColorsDark.onPrimary,
      primaryContainer: AppColorsDark.primaryContainer,
      onPrimaryContainer: AppColorsDark.onPrimaryContainer,
      secondary: AppColorsDark.accent,
      onSecondary: AppColorsDark.onAccent,
      surface: AppColorsDark.surface,
      onSurface: AppColorsDark.onSurface,
      onSurfaceVariant: AppColorsDark.onSurfaceVariant,
      outline: AppColorsDark.outline,
      error: AppColorsDark.error,
      onError: AppColorsDark.onError,
    ),
    scaffoldBackgroundColor: AppColorsDark.background,
    textTheme: AppTypography.textThemeWith(
      displayColor: AppColorsDark.onSurface,
      headlineColor: AppColorsDark.onSurface,
      titleColor: AppColorsDark.onSurface,
      bodyColor: AppColorsDark.onSurface,
      bodySecondaryColor: AppColorsDark.onSurfaceVariant,
      labelColor: AppColorsDark.onSurfaceVariant,
      captionColor: AppColorsDark.onSurfaceTertiary,
    ),
  );
}
