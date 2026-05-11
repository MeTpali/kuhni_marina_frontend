import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../core/widgets/liquid_glass/liquid_glass.dart';
import '../../../domain/models/campaign/campaign.dart';

/// Карточка акции: изображение (высота к ширине 1.2), снизу панель liquid glass
/// без скругления сверху, только верхняя граница; при наведении увеличивается
/// внутренний отступ (как раньше).
class HomeCampaignCard extends StatefulWidget {
  const HomeCampaignCard({
    required this.campaign,
    required this.screenSize,
    required this.cardWidth,
    super.key,
    this.onTap,
  });

  final Campaign campaign;
  final ScreenSize screenSize;
  final double cardWidth;
  final VoidCallback? onTap;

  /// Высота карточки: ширина × 1.2.
  static double cardHeightForWidth(double width) => width * 1.2;

  /// Размытие только полосы: сильный blur даёт большой kernel и визуально «мылит» картинку.
  static const double _stripBlurSigma = 2.5;

  @override
  State<HomeCampaignCard> createState() => _HomeCampaignCardState();
}

class _HomeCampaignCardState extends State<HomeCampaignCard> {
  bool _hovered = false;

  static const LiquidGlassVariant _variant = LiquidGlassVariant.light;

  static const EdgeInsets _padCollapsed = EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 12,
  );
  static const EdgeInsets _padExpanded = EdgeInsets.symmetric(
    horizontal: 14,
    vertical: 22,
  );

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final w = widget.cardWidth;
    final h = HomeCampaignCard.cardHeightForWidth(w);
    final url = (widget.campaign.bannerImageUrl ?? '').trim();

    final titleStyle = Theme.of(context).textTheme.displayMedium?.copyWith(
      color: AppColors.base100,
      fontWeight: FontWeight.w600,
    );

    final borderColor = LiquidGlassTokens.variantBorderColor(_variant);
    final wash = LiquidGlassTokens.variantMonotoneWash(_variant);

    final bottomGlass = ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: HomeCampaignCard._stripBlurSigma,
          sigmaY: HomeCampaignCard._stripBlurSigma,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: wash,
            border: Border(top: BorderSide(color: borderColor, width: 1)),
          ),
          child: AnimatedPadding(
            duration: LiquidGlassTokens.glassDuration,
            curve: LiquidGlassTokens.glassCurve,
            padding: _hovered ? _padExpanded : _padCollapsed,
            child: Text(
              widget.campaign.name,
              maxLines: _hovered ? 3 : 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: titleStyle,
            ),
          ),
        ),
      ),
    );

    Widget card = ClipRRect(
      borderRadius: BorderRadius.circular(s.cardBorderRadius),
      child: SizedBox(
        width: w,
        height: h,
        child: MouseRegion(
          onEnter: (_) => setState(() => _hovered = true),
          onExit: (_) => setState(() => _hovered = false),
          child: AppImage(
            url: url,
            borderRadius: 0,
            width: w,
            height: h,
            fit: BoxFit.cover,
            backgroundColor: AppColors.primaryContainer,
            child: Positioned(left: 0, right: 0, bottom: 0, child: bottomGlass),
          ),
        ),
      ),
    );

    if (widget.onTap != null) {
      card = Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(s.cardBorderRadius),
          child: card,
        ),
      );
    }

    return card;
  }
}
