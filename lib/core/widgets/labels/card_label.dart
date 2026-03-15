import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../types/bracing.dart';

extension BracingLabelType on BracingType {
  BorderRadiusGeometry resolveLabelBorder() => switch (this) {
    BracingType.none => const BorderRadius.all(Radius.circular(4)),
    BracingType.left => const BorderRadius.horizontal(
      right: Radius.circular(4),
    ),
    BracingType.top => const BorderRadius.vertical(bottom: Radius.circular(4)),
    BracingType.right => const BorderRadius.horizontal(
      left: Radius.circular(4),
    ),
    BracingType.bottom => const BorderRadius.vertical(top: Radius.circular(4)),
    BracingType.all => BorderRadius.zero,
  };
}

/// Метка для карточки товара
class CardLabel extends StatelessWidget {
  /// Заголовок метки
  final String title;

  /// Цвет фона
  final Color color;

  /// Тип метки
  final BracingType bracingType;

  /// Горизонтальный отступ (если null — 4)
  final double? paddingHorizontal;

  /// Вертикальный отступ (если null — 2.5)
  final double? paddingVertical;

  /// Размер шрифта (если null — 11)
  final double? fontSize;

  /// Метка для карточки товара
  const CardLabel({
    required this.title,
    required this.color,
    this.bracingType = BracingType.none,
    this.paddingHorizontal,
    this.paddingVertical,
    this.fontSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: bracingType.resolveLabelBorder(),
    child: ColoredBox(
      color: color,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 4,
          vertical: paddingVertical ?? 2.5,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.base0,
            fontSize: fontSize ?? 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
