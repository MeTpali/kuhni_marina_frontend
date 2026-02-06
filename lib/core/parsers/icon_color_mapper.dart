import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Реализация [ColorMapper] для управления цветами `fill` и `stroke`
/// внутри SVG-иконок при использовании [SvgPicture.asset] или [SvgPicture.string].
///
/// С помощью этого класса можно подменять цвета заливки (`fill`) и обводки (`stroke`)
/// без необходимости редактировать сам SVG-файл.
///
/// Пример использования:
///
/// ```dart
/// SvgPicture.asset(
///   'assets/star.svg',
///   colorMapper: const IconColorMapper(
///     fillColor: Colors.white,
///     strokeColor: Colors.red,
///   ),
/// )
/// ```
///
/// В данном случае иконка будет отрисована с белой заливкой и красной обводкой,
/// независимо от того, какие цвета были прописаны в исходном SVG.
class IconColorMapper implements ColorMapper {
  /// Цвет, которым будет заменён атрибут `fill` в SVG.
  ///
  /// Если значение `null`, то оригинальный цвет `fill` из SVG сохранится.
  final Color? fillColor;

  /// Цвет, которым будет заменён атрибут `stroke` в SVG.
  ///
  /// Если значение `null`, то оригинальный цвет `stroke` из SVG сохранится.
  final Color? strokeColor;

  /// Базовый конструктор, позволяющий задать цвета `fill` и `stroke` отдельно.
  ///
  /// - [fillColor] заменяет цвет заливки в SVG.
  /// - [strokeColor] заменяет цвет обводки в SVG.
  const IconColorMapper({this.fillColor, this.strokeColor});

  /// Конструктор, при котором и `fill`, и `stroke` будут заменены на один и тот же [color].
  ///
  /// Удобно, если нужно закрасить иконку полностью одним цветом.
  const IconColorMapper.filled({required Color color})
    : fillColor = color,
      strokeColor = color;

  /// Конструктор, при котором `fill` всегда будет прозрачным,
  /// а `stroke` можно задать отдельно.
  ///
  /// Полезно, когда нужна только обводка иконки без заливки.
  const IconColorMapper.transparent({this.strokeColor})
    : fillColor = Colors.transparent;

  @override
  Color substitute(
    String? id,
    String elementName,
    String attributeName,
    Color color,
  ) {
    if (attributeName == 'fill') {
      return fillColor ?? color;
    } else if (attributeName == 'stroke') {
      return strokeColor ?? color;
    }
    return color;
  }
}
