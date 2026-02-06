import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

/// Кастомная иконка-кнопка приложения.
///
/// Основные возможности:
/// - поддержка настроек стиля (`backgroundColor`, `overlayColor`, `borderColor`, `elevation`);
/// - возможность указать подпись (`label`) под иконкой;
/// - гибкая настройка размеров иконки (`iconSize`) и текста (`labelStyle`).
///
/// Пример использования:
/// ```dart
/// AppIconButton(
///   icon: Icon(Icons.add),
///   onPressed: () {},
/// )
///
/// AppIconButton(
///   icon: Icon(Icons.delete),
///   label: "Удалить",
///   onPressed: () {},
///   borderColor: Colors.red,
/// )
/// ```
class AppIconButton extends StatelessWidget {
  /// Иконка внутри кнопки.
  final Widget icon;

  /// Обработчик нажатия.
  final VoidCallback? onPressed;

  /// Размер иконки в кнопке.
  ///
  /// По умолчанию `14`.
  final double iconSize;

  /// Отступы иконки внутри кнопки
  final EdgeInsetsGeometry iconPadding;

  /// Цвет фона кнопки.
  ///
  /// Если не задан, используется `AppColors.base10`.
  final Color? backgroundColor;

  /// Цвет оверлея при нажатии/hover.
  final Color? overlayColor;

  /// Цвет обводки кнопки (опционально).
  ///
  /// Если указан, кнопка будет с круглой границей.
  final Color? borderColor;

  /// Текстовая подпись под кнопкой.
  ///
  /// Если не указана, отображается только кнопка.
  final String? label;

  /// Оступ подписи от кнопки.
  ///
  /// Если не указан, равен 8.0.
  final double labelSpacing;

  /// Стиль подписи (`label`).
  ///
  /// По умолчанию используется стиль с размером `11`, `w500`, `AppColors.base0`.
  final TextStyle? labelStyle;

  /// Высота тени (elevation).
  final double? elevation;

  /// Создаёт FocusNode
  final FocusNode? focusNode;

  /// Создаёт иконку-кнопку.
  const AppIconButton({
    required this.icon,
    this.onPressed,
    this.iconSize = 14,
    this.iconPadding = EdgeInsets.zero,
    this.backgroundColor,
    this.overlayColor,
    this.borderColor,
    this.label,
    this.labelSpacing = 8.0,
    this.labelStyle,
    this.elevation,
    this.focusNode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (label == null) return _buildButton();

    return Column(
      spacing: labelSpacing,
      children: [
        _buildButton(),
        FittedBox(
          child: Text(
            label!,
            style:
                labelStyle ??
                const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: AppColors.base0,
                ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton() => IconButton(
    onPressed: onPressed,
    icon: icon,
    focusNode: focusNode,
    style: IconButton.styleFrom(
      padding: iconPadding,
      iconSize: iconSize,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: const Size(0, 0),
      backgroundColor: backgroundColor ?? Colors.transparent,
      disabledBackgroundColor: backgroundColor ?? Colors.transparent,
      overlayColor: overlayColor,
      elevation: elevation,
      shadowColor: AppColors.quartzite.withAlpha(100),
      shape: borderColor != null
          ? CircleBorder(side: BorderSide(color: borderColor!))
          : null,
    ),
  );
}
