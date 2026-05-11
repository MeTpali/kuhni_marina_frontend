import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/home_sizes.dart';
import '../../constants/screen_size.dart';
import '../liquid_glass/liquid_glass.dart';

/// Карточка в стиле [HomeAppBar]: тот же blur и то же светлое затенение (белый 0.2),
/// плюс обводка по контуру карточки.
/// Поддерживает hover-анимацию (радиус/внутренние отступы) и tap через InkWell.
class HomeGlassCard extends StatefulWidget {
  const HomeGlassCard({
    required this.child,
    this.onTap,
    this.hoverAnimation = true,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final bool hoverAnimation;

  @override
  State<HomeGlassCard> createState() => _HomeGlassCardState();
}

class _HomeGlassCardState extends State<HomeGlassCard>
    with SingleTickerProviderStateMixin {
  static const EdgeInsets _padNormal = EdgeInsets.all(12.8);
  static const EdgeInsets _padHover = EdgeInsets.fromLTRB(12.8, 24, 12.8, 24);
  static const double _radiusNormal = 16;
  static const double _radiusHover = 24;

  late final AnimationController _controller;
  late final Animation<double> _radius;
  late final Animation<EdgeInsetsGeometry> _padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: LiquidGlassTokens.glassDuration,
    );
    final curved = CurvedAnimation(
      parent: _controller,
      curve: LiquidGlassTokens.glassCurve,
    );
    _radius = Tween<double>(
      begin: _radiusNormal,
      end: _radiusHover,
    ).animate(curved);
    _padding = EdgeInsetsGeometryTween(
      begin: _padNormal,
      end: _padHover,
    ).animate(curved);
    if (!widget.hoverAnimation) {
      _controller.value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _setHovered(bool hovered) async {
    if (!widget.hoverAnimation) return;
    if (hovered) {
      await _controller.forward();
    } else {
      await _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final radius = widget.hoverAnimation ? _radius.value : _radiusNormal;
        final pad = widget.hoverAnimation ? _padding.value : _padNormal;

        Widget card = ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: s.homeAppBarBlurSigma,
              sigmaY: s.homeAppBarBlurSigma,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                border: Border.all(color: AppColors.outline, width: 1.5),
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Padding(padding: pad, child: widget.child),
            ),
          ),
        );

        if (widget.hoverAnimation) {
          card = MouseRegion(
            onEnter: (_) async => _setHovered(true),
            onExit: (_) async => _setHovered(false),
            child: card,
          );
        }

        if (widget.onTap != null) {
          card = Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(radius),
              child: card,
            ),
          );
        }

        return card;
      },
    );
  }
}
