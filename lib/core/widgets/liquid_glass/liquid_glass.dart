import 'dart:ui';

import 'package:flutter/material.dart';

/// Палитра обводки стеклянной карточки (см. `LiquidGlassCard` в `liquid_glass_card.dart`).
enum LiquidGlassVariant { light, dark, accent }

/// Общие константы и тинты для стеклянных карточек (`liquid_glass_card.dart`).
///
/// `LiquidGlassCard` — blur, **равномерная** заливка [LiquidGlassTokens.variantMonotoneWash],
/// обводка [LiquidGlassTokens.variantBorderColor]; без градиентных бликов.
/// `LiquidGlassCardAdvanced` — то же + опционально displacement и лупа по снимку.
///
/// Почему нет `feDisplacementMap` в обычной карточке: во Flutter [BackdropFilter]
/// ограничен [ImageFilter]. Displacement — только через снимок + шейдер, см.
/// `README.md`, `doc/backdrop_shader_guide.md`.
abstract final class LiquidGlassTokens {
  LiquidGlassTokens._();

  /// Кривая из референса: `cubic-bezier(0.175, 0.885, 0.32, 2.2)`.
  static const Curve glassCurve = Cubic(0.175, 0.885, 0.32, 2.2);

  static const Duration glassDuration = Duration(milliseconds: 400);

  /// Непрозрачность равномерной заливки варианта: **0.2** ⇒ слой на **~80% прозрачен**
  /// (фон просвечивает одинаково по всей площади карточки, без градиента).
  static const double variantMonotoneWashOpacity = 0.2;

  /// Однотонная заливка по [variant]; [opacity] по умолчанию [variantMonotoneWashOpacity].
  static Color variantMonotoneWash(
    LiquidGlassVariant variant, {
    double? opacity,
  }) {
    final a = opacity ?? variantMonotoneWashOpacity;
    return switch (variant) {
      LiquidGlassVariant.light => Colors.white.withValues(alpha: a),
      LiquidGlassVariant.dark => Colors.black.withValues(alpha: a),
      LiquidGlassVariant.accent => const Color(0xFFE31E24).withValues(alpha: a),
    };
  }

  /// Цвет обводки карточки (тот же, что рисует `_LiquidGlassBorderPainter`).
  static Color variantBorderColor(LiquidGlassVariant variant) =>
      switch (variant) {
        LiquidGlassVariant.light => Colors.white.withValues(alpha: 0.35),
        LiquidGlassVariant.dark => Colors.white.withValues(alpha: 0.12),
        LiquidGlassVariant.accent => Colors.white.withValues(alpha: 0.25),
      };

  /// Полупрозрачный тинт для **ручной** подложки (карточки не подставляют его при `onTap`,
  /// чтобы не смещать оттенок относительно [variantMonotoneWash]).
  static Color referenceTint(LiquidGlassVariant variant) => switch (variant) {
    LiquidGlassVariant.light => Colors.white.withValues(alpha: 0.15),
    LiquidGlassVariant.dark => Colors.black.withValues(alpha: 0.35),
    LiquidGlassVariant.accent => const Color(0xB5E31E24),
  };
}
