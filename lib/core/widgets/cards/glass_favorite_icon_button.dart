import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/home_sizes.dart';
import '../../constants/screen_size.dart';

/// Круглая кнопка избранного: blur и затенение как у стеклянных карточек главной.
/// Только смена цвета сердца при наведении / в избранном (без масштабирования).
class GlassFavoriteIconButton extends StatefulWidget {
  const GlassFavoriteIconButton({
    required this.screenSize,
    required this.isFavorite,
    this.onTap,
    super.key,
  });

  static const double kDiameter = 44;

  /// Прозрачная зона вокруг круга для hit-test.
  static const EdgeInsets kHitPadding = EdgeInsets.all(AppSpacing.sm);

  final ScreenSize screenSize;
  final bool isFavorite;
  final VoidCallback? onTap;

  @override
  State<GlassFavoriteIconButton> createState() =>
      _GlassFavoriteIconButtonState();
}

class _GlassFavoriteIconButtonState extends State<GlassFavoriteIconButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;

    final heartColor = widget.isFavorite
        ? AppColors.accent
        : (_hover ? AppColors.accent : AppColors.onSurface);

    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onTap,
        child: Padding(
          padding: GlassFavoriteIconButton.kHitPadding,
          child: SizedBox(
            width: GlassFavoriteIconButton.kDiameter,
            height: GlassFavoriteIconButton.kDiameter,
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: s.homeAppBarBlurSigma,
                  sigmaY: s.homeAppBarBlurSigma,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.2),
                    border: Border.all(color: AppColors.outline, width: 1.5),
                  ),
                  child: Center(
                    child: Icon(
                      widget.isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      size: 22,
                      color: heartColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
