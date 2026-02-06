import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';
import '../extensions/tap_lock_mixin.dart';
import '../overlay/overlay_item.dart';
import '../overlay/overlay_wrap.dart';

/// Тип главной кнопки
enum MainButtonType { primary, secondary, tertiary, quaternary }

extension MainButtonTypeX on MainButtonType {
  /// Цвет фона кнопки
  Color resolveColor(bool enabled) => switch (this) {
    MainButtonType.primary =>
      enabled ? AppColors.fairway : AppColors.silverLeaf,
    MainButtonType.secondary =>
      enabled ? AppColors.base0 : AppColors.whiteEdgar,
    MainButtonType.tertiary => enabled ? AppColors.base0 : AppColors.whiteEdgar,
    MainButtonType.quaternary =>
      enabled ? AppColors.fairway : AppColors.whiteEdgar,
  };

  /// Цвет содержимого внутри кнопки
  Color resolveForegroundColor(bool enabled) => switch (this) {
    MainButtonType.primary =>
      enabled ? AppColors.base0 : AppColors.boysenberryShadow,
    MainButtonType.secondary =>
      enabled ? AppColors.fairway : AppColors.uniformGrey,
    MainButtonType.tertiary =>
      enabled ? AppColors.blueGenie : AppColors.uniformGrey,
    MainButtonType.quaternary =>
      enabled ? AppColors.base0 : AppColors.uniformGrey,
  };

  /// Цвет наполнения звезды
  Color resolveStarFillColor(bool enabled) => switch (this) {
    MainButtonType.primary => enabled ? AppColors.base0 : AppColors.silverLeaf,
    MainButtonType.secondary =>
      enabled ? AppColors.base0 : AppColors.whiteEdgar,
    MainButtonType.tertiary => enabled ? AppColors.base0 : AppColors.whiteEdgar,
    MainButtonType.quaternary =>
      enabled ? AppColors.base0 : AppColors.whiteEdgar,
  };

  /// Цвет границ звезды
  Color resolveStarStrokeColor(bool enabled) => switch (this) {
    MainButtonType.primary => enabled ? AppColors.fairway : AppColors.fairway,
    MainButtonType.secondary =>
      enabled ? AppColors.fairway : AppColors.uniformGrey,
    MainButtonType.tertiary =>
      enabled ? AppColors.blueGenie : AppColors.uniformGrey,
    MainButtonType.quaternary =>
      enabled ? AppColors.blueGenie : AppColors.uniformGrey,
  };
}

class MainButton extends StatefulWidget {
  /// Содержимое кнопки
  final Widget child;

  /// Действие на единичное нажатие.
  final VoidCallback onPressed;

  /// Действие на долгое нажатие.
  final VoidCallback? onLongPress;

  /// Тип кнопки. Задаёт стиль.
  final MainButtonType type;

  /// Высота кнопки
  final double? height;

  /// Ширина кнопки
  final double? width;

  /// Отступы контента внутри кнопки
  final EdgeInsetsGeometry contentPadding;

  /// Переопределение цвета фона
  final Color? backgroundColor;

  /// Кнопка отключена
  final bool disabled;

  /// Нужно ли блокировать кнопку до завершения предыдущего вызова
  final bool shouldLockTap;

  /// Размер звёзд
  final double starSize;

  /// Радиус скругления кнопки
  final double borderRadius;

  const MainButton({
    required this.child,
    required this.onPressed,
    required this.type,
    this.onLongPress,
    this.height,
    this.width,
    this.contentPadding = const EdgeInsets.all(14.0),
    this.backgroundColor,
    this.disabled = false,
    this.shouldLockTap = true,
    this.starSize = 44.0,
    this.borderRadius = 12.0,
    super.key,
  });

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> with TapLockMixin {
  @override
  Widget build(BuildContext context) {
    final color =
        widget.backgroundColor ?? widget.type.resolveColor(!widget.disabled);

    return OverlayWrap(
      overlayItems: [
        OverlayItem(
          topOffset: -widget.starSize / 2,
          rightOffset: 10,
          widget: SvgPicture.asset(
            AppIcons.star1,
            height: widget.starSize,
            width: widget.starSize,
            colorMapper: IconColorMapper(
              fillColor: widget.type.resolveStarFillColor(!widget.disabled),
              strokeColor: widget.type.resolveStarStrokeColor(!widget.disabled),
            ),
          ),
        ),
        OverlayItem(
          bottomOffset: -widget.starSize / 2,
          leftOffset: 14,
          widget: SvgPicture.asset(
            AppIcons.star1,
            height: widget.starSize,
            width: widget.starSize,
            colorMapper: IconColorMapper(
              fillColor: widget.type.resolveStarFillColor(!widget.disabled),
              strokeColor: widget.type.resolveStarStrokeColor(!widget.disabled),
            ),
          ),
        ),
      ],
      child: SizedBox(
        height: widget.height ?? 53,
        width: widget.width ?? double.infinity,
        child: ElevatedButton(
          onPressed: widget.disabled
              ? null
              : widget.shouldLockTap
              ? () async => runLockedTap(() async => widget.onPressed())
              : widget.onPressed,
          onLongPress: widget.onLongPress,
          child: widget.child,
          style: ButtonStyle(
            padding: WidgetStateProperty.all(widget.contentPadding),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(const Size(0, 0)),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
            surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
            backgroundColor: WidgetStateProperty.all(color),
            foregroundColor: WidgetStateProperty.all(
              widget.type.resolveForegroundColor(!widget.disabled),
            ),
            overlayColor: WidgetStateProperty.all(
              Color.lerp(color, Colors.transparent, 0.2),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
