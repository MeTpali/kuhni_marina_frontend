import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

/// {@template optional_scroll_physics}
/// Класс, расширяющий [BouncingScrollPhysics] и позволяющий гибко управлять
/// поведением оверскролла (отскока) при прокрутке.
///
/// По умолчанию [BouncingScrollPhysics] создаёт "упругий" эффект прокрутки
/// как на iOS — при достижении верхней или нижней границы списка.
/// Этот класс даёт возможность **включать или отключать оверскролл**
/// **независимо сверху и снизу**.
///
/// ### Когда использовать
/// - Нужно разрешить "оттягивание" только сверху (например, для жеста закрытия модального окна).
/// - Хочется запретить появление пустого пространства снизу.
/// - Нужно полностью убрать bounce-эффект, но сохранить плавную инерцию iOS-прокрутки.
///
/// ### Примеры использования
/// ```dart
/// // Разрешить оверскролл только сверху (например, для pull-to-dismiss)
/// physics: const OptionalScrollPhysics(top: true, bottom: false),
///
/// // Полностью запретить оверскролл (как на Android)
/// physics: const OptionalScrollPhysics(top: false, bottom: false),
///
/// // Разрешить bounce и сверху, и снизу (поведение по умолчанию)
/// physics: const OptionalScrollPhysics(),
/// ```
///
/// ### Примечание
/// Если вы хотите полностью убрать инерцию и упругость, используйте
/// [ClampingScrollPhysics].
/// {@endtemplate}
class OptionalScrollPhysics extends BouncingScrollPhysics {
  /// Разрешить ли оверскролл сверху.
  final bool top;

  /// Разрешить ли оверскролл снизу.
  final bool bottom;

  /// Создаёт [OptionalScrollPhysics].
  ///
  /// [top] и [bottom] по умолчанию установлены в `true`, что эквивалентно
  /// обычному поведению [BouncingScrollPhysics].
  const OptionalScrollPhysics({
    this.top = true,
    this.bottom = true,
    super.parent,
  });

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    // Тянем вверх (scroll < minScrollExtent)
    if (value < position.minScrollExtent) {
      if (top) {
        // Разрешаем bounce
        return 0.0;
      } else {
        // Блокируем оверскролл вверх
        return value - position.minScrollExtent;
      }
    }

    // Тянем вниз (scroll > maxScrollExtent)
    if (value > position.maxScrollExtent) {
      if (bottom) {
        // Разрешаем bounce
        return 0.0;
      } else {
        // Блокируем оверскролл вниз
        return value - position.maxScrollExtent;
      }
    }

    // В пределах допустимого диапазона — без ограничений
    return 0.0;
  }

  @override
  OptionalScrollPhysics applyTo(ScrollPhysics? ancestor) =>
      OptionalScrollPhysics(
        top: top,
        bottom: bottom,
        parent: buildParent(ancestor),
      );
}
