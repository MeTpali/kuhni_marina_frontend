import 'dart:ui' show ImageFilter, lerpDouble;

import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/product_card_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../core/widgets/images/app_image.dart';
import '../../../../core/widgets/reveal/reveal_wrap.dart';

/// Карточка с фоновым изображением: заголовок сверху слева, hover — blur и CTA.
class HomeHoverImageCard extends StatefulWidget {
  const HomeHoverImageCard({
    required this.title,
    required this.imageUrl,
    required this.screenSize,
    required this.revealIndex,
    required this.revealKeyPrefix,
    this.textScale = 1,
    super.key,
    this.onTap,
  });

  final String title;
  final String imageUrl;
  final ScreenSize screenSize;
  final int revealIndex;
  final String revealKeyPrefix;
  final double textScale;
  final VoidCallback? onTap;

  static const Duration hoverDuration = Duration(milliseconds: 320);
  static const Curve hoverCurve = Curves.easeOutCubic;
  static const double hoverBlurSigma = 14;

  @override
  State<HomeHoverImageCard> createState() => _HomeHoverImageCardState();
}

class _HomeHoverImageCardState extends State<HomeHoverImageCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _hoverController;
  late final Animation<double> _hoverT;

  static const _titleShadows = [
    Shadow(color: Color(0x99000000), blurRadius: 10, offset: Offset(0, 2)),
    Shadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 1)),
  ];

  @override
  void initState() {
    super.initState();
    _hoverController = AnimationController(
      vsync: this,
      duration: HomeHoverImageCard.hoverDuration,
    );
    _hoverT = CurvedAnimation(
      parent: _hoverController,
      curve: HomeHoverImageCard.hoverCurve,
      reverseCurve: HomeHoverImageCard.hoverCurve,
    );
  }

  @override
  void dispose() {
    _hoverController.dispose();
    super.dispose();
  }

  void _setHovered(bool hovered) {
    if (hovered) {
      _hoverController.forward();
    } else {
      _hoverController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final scale = widget.textScale;
    final url = widget.imageUrl.trim();
    final titleStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w600,
          fontSize: s.headlineSmallSize * scale,
          shadows: _titleShadows,
        );
    final ctaStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: s.headlineSmallSize * scale,
          color: AppColors.graphite,
        );

    final titlePadding = EdgeInsets.all(s.horizontalPadding * 0.75);
    const titleSlideOut = 28.0;

    return ClipRRect(
      borderRadius: BorderRadius.circular(s.cardBorderRadius),
      child: MouseRegion(
        onEnter: (_) => _setHovered(true),
        onExit: (_) => _setHovered(false),
        child: AppImage(
          url: url,
          borderRadius: 0,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          backgroundColor: AppColors.primaryContainer,
          child: AnimatedBuilder(
            animation: _hoverT,
            builder: (context, _) {
              final t = _hoverT.value;
              final blurSigma = lerpDouble(
                0,
                HomeHoverImageCard.hoverBlurSigma,
                t,
              )!;
              final washAlpha = lerpDouble(0, 0.12, t)!;

              return Stack(
                fit: StackFit.expand,
                children: [
                  if (t > 0)
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: blurSigma,
                          sigmaY: blurSigma,
                        ),
                        child: ColoredBox(
                          color: AppColors.white.withValues(alpha: washAlpha),
                        ),
                      ),
                    ),
                  Opacity(
                    opacity: t,
                    child: Center(
                      child: Padding(
                        padding: titlePadding,
                        child: AppTextButton(
                          label: widget.title,
                          style: ctaStyle ?? const TextStyle(),
                          onPressed: widget.onTap,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -titleSlideOut * t),
                    child: Opacity(
                      opacity: 1 - t,
                      child: Padding(
                        padding: titlePadding,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RevealWrap(
                            key: ValueKey(
                              '${widget.revealKeyPrefix}-${widget.revealIndex}',
                            ),
                            variant: RevealEntranceVariant.fadeSlideFromTop,
                            resetWhenLeavingViewport: true,
                            slideDistance: 40,
                            child: Text(
                              widget.title,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: titleStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
