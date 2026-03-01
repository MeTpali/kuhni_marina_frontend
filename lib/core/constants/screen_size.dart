import 'package:flutter/material.dart';

import 'breakpoints.dart';

/// Класс размера экрана по ширине: для адаптивной вёрстки (телефон / планшет / десктоп).
enum ScreenSize {
  /// Узкий экран (телефон): ширина < [Breakpoints.tablet].
  compact,

  /// Средний (планшет, телефон в альбоме): [Breakpoints.tablet] ≤ ширина < [Breakpoints.desktop].
  medium,

  /// Широкий (десктоп, планшет в альбоме): ширина ≥ [Breakpoints.desktop].
  expanded;

  /// Определяет размер по ширине в логических пикселях.
  static ScreenSize fromWidth(double width) {
    if (width < Breakpoints.tablet) return ScreenSize.compact;
    if (width < Breakpoints.desktop) return ScreenSize.medium;
    return ScreenSize.expanded;
  }

  /// Определяет размер по [Size] (обычно из [MediaQuery.sizeOf]).
  static ScreenSize fromSize(Size size) => fromWidth(size.width);

  /// Является ли экран «компактным» (телефон).
  bool get isCompact => this == ScreenSize.compact;

  /// Является ли экран средним (планшет) или широким.
  bool get isMediumOrExpanded =>
      this == ScreenSize.medium || this == ScreenSize.expanded;

  /// Является ли экран широким (десктоп).
  bool get isExpanded => this == ScreenSize.expanded;
}

/// Расширение для [BuildContext]: текущий размер экрана по [MediaQuery].
extension ScreenSizeContext on BuildContext {
  /// Текущий размер экрана по ширине (обновляется при ресайзе).
  ScreenSize get screenSize => ScreenSize.fromSize(MediaQuery.sizeOf(this));
}
