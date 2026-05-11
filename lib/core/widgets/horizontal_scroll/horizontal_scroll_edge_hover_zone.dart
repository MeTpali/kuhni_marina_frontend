import 'package:flutter/material.dart';

import '../liquid_glass/liquid_glass.dart';
import 'liquid_glass_scroll_chevron.dart';

/// Край карусели / горизонтального списка: появление стрелки —
/// [AnimatedOpacity] + [AnimatedSlide] (без увеличения при hover).
///
/// * [fullSideHitTarget] == `true` (баннер): наведение и тап на **всю** боковую
///   колонку; стрелка с [IgnorePointer], чтобы курсор не «дёргался».
/// * [fullSideHitTarget] == `false` (списки карточек): **полная высота** родителя,
///   ширина — только полоса шириной со стрелку (+ [padding] и [iconPadding]), чтобы
///   не перекрывать крайние карточки по горизонтали.
class HorizontalScrollEdgeHoverZone extends StatelessWidget {
  const HorizontalScrollEdgeHoverZone({
    required this.alignment,
    required this.padding,
    required this.hovered,
    required this.onHoverChanged,
    required this.slideEnd,
    required this.onZoneTap,
    required this.icon,
    required this.iconSize,
    this.iconColor,
    this.glassVariant = LiquidGlassVariant.light,
    this.blurSigma = 4,
    this.iconPadding = const EdgeInsets.all(8),
    this.opacityDuration = const Duration(milliseconds: 200),
    this.slideDuration = const Duration(milliseconds: 240),
    this.fullSideHitTarget = true,
    super.key,
  });

  final Alignment alignment;
  final EdgeInsets padding;
  final bool hovered;
  final ValueChanged<bool> onHoverChanged;
  final Offset slideEnd;
  final VoidCallback onZoneTap;
  final IconData icon;
  final double iconSize;
  final Color? iconColor;
  final LiquidGlassVariant glassVariant;
  final double blurSigma;
  final EdgeInsets iconPadding;
  final Duration opacityDuration;
  final Duration slideDuration;

  /// `true` — зона наведения на весь бок (баннер). `false` — узкая вертикальная полоса.
  final bool fullSideHitTarget;

  Widget _chevronStack() => AnimatedOpacity(
        opacity: hovered ? 1 : 0,
        duration: opacityDuration,
        curve: Curves.easeOut,
        child: AnimatedSlide(
          duration: slideDuration,
          curve: Curves.easeOutCubic,
          offset: hovered ? Offset.zero : slideEnd,
          child: LiquidGlassScrollChevron(
            icon: icon,
            iconSize: iconSize,
            variant: glassVariant,
            blurSigma: blurSigma,
            iconPadding: iconPadding,
            iconColor: iconColor,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final paddedChevron = Padding(
      padding: padding,
      child: _chevronStack(),
    );

    if (!fullSideHitTarget) {
      final stripWidth =
          padding.horizontal + iconPadding.horizontal + iconSize;
      return SizedBox(
        width: stripWidth,
        height: double.infinity,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => onHoverChanged(true),
          onExit: (_) => onHoverChanged(false),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onZoneTap,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Align(
                  alignment: alignment,
                  child: paddedChevron,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          hitTestBehavior: HitTestBehavior.translucent,
          onEnter: (_) => onHoverChanged(true),
          onExit: (_) => onHoverChanged(false),
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onZoneTap,
            child: const SizedBox.expand(),
          ),
        ),
        Align(
          alignment: alignment,
          child: IgnorePointer(child: paddedChevron),
        ),
      ],
    );
  }
}
