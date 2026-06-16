import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_glass_card.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../domain/models/campaign/campaign.dart';

/// Карточка акции: 16×9, при hover — liquid glass с названием и описанием.
class HomeCampaignCard extends StatefulWidget {
  const HomeCampaignCard({
    required this.campaign,
    required this.screenSize,
    required this.cardWidth,
    required this.revealIndex,
    super.key,
    this.onTap,
  });

  final Campaign campaign;
  final ScreenSize screenSize;
  final double cardWidth;
  final int revealIndex;
  final VoidCallback? onTap;

  static const double aspectRatio = 16 / 9;
  static const Duration hoverDuration = Duration(milliseconds: 320);
  static const Curve hoverCurve = Curves.easeOutCubic;

  static double cardHeightForWidth(double width) => width / aspectRatio;

  @override
  State<HomeCampaignCard> createState() => _HomeCampaignCardState();
}

class _HomeCampaignCardState extends State<HomeCampaignCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _hoverController;
  late final Animation<double> _hoverT;

  static const _overlayShadows = [
    Shadow(color: Color(0x73000000), blurRadius: 8, offset: Offset(0, 1)),
  ];

  @override
  void initState() {
    super.initState();
    _hoverController = AnimationController(
      vsync: this,
      duration: HomeCampaignCard.hoverDuration,
    );
    _hoverT = CurvedAnimation(
      parent: _hoverController,
      curve: HomeCampaignCard.hoverCurve,
      reverseCurve: HomeCampaignCard.hoverCurve,
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
    final height = HomeCampaignCard.cardHeightForWidth(widget.cardWidth);
    final url = (widget.campaign.bannerImageUrl ?? '').trim();
    final description = (widget.campaign.description ?? '').trim();
    final edgeInset = s.horizontalPadding * 0.75;
    final overlayMaxWidth = widget.cardWidth * 2 / 3;
    final sizeMultiplier = switch (s) {
      ScreenSize.compact => 0.85,
      ScreenSize.medium => 1.25,
      ScreenSize.expanded => 1.75,
    };

    final overlayTitleStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: (s.bodyLargeSize + 5) * sizeMultiplier,
      shadows: _overlayShadows,
    );

    final overlayDescriptionStyle = Theme.of(context).textTheme.bodyMedium
        ?.copyWith(
          color: AppColors.white.withValues(alpha: 0.95),
          fontSize: s.bodyLargeSize * sizeMultiplier,
          shadows: _overlayShadows,
        );

    final image = AppImage(
      url: url,
      borderRadius: 0,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      backgroundColor: AppColors.primaryContainer,
      child: AnimatedBuilder(
        animation: _hoverT,
        builder: (context, _) {
          final overlayOpacity = _hoverT.value;

          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(edgeInset),
                  child: IgnorePointer(
                    ignoring: overlayOpacity < 0.05,
                    child: Opacity(
                      opacity: overlayOpacity,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: overlayMaxWidth),
                        child: HomeGlassCard(
                          hoverAnimation: true,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.campaign.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: overlayTitleStyle,
                              ),
                              if (description.isNotEmpty) ...[
                                SizedBox(height: edgeInset * 0.35),
                                Text(
                                  description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: overlayDescriptionStyle,
                                ),
                              ],
                            ],
                          ),
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
    );

    return SizedBox(
      width: widget.cardWidth,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(s.cardBorderRadius),
        child: MouseRegion(
          onEnter: (_) => _setHovered(true),
          onExit: (_) => _setHovered(false),
          child: widget.onTap == null
              ? image
              : GestureDetector(
                  onTap: widget.onTap,
                  behavior: HitTestBehavior.opaque,
                  child: image,
                ),
        ),
      ),
    );
  }
}
