import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_glass_card.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import 'home_welcome_nav_button.dart';

class HomeWelcomeNavItem {
  const HomeWelcomeNavItem({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;
}

/// Стеклянная карточка с кнопками навигации по секциям главной (hero, drawer).
class HomeWelcomeNavPanel extends StatelessWidget {
  const HomeWelcomeNavPanel({
    required this.navItems,
    this.animateEntrance = true,
    this.glassHoverAnimation = true,
    this.wrapInGlassCard = true,
    super.key,
  });

  final List<HomeWelcomeNavItem> navItems;
  final bool animateEntrance;
  final bool glassHoverAnimation;
  final bool wrapInGlassCard;

  static const navButtonShadows = [
    Shadow(color: Color(0x99000000), blurRadius: 10, offset: Offset(0, 2)),
    Shadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 1)),
  ];

  static TextStyle navButtonStyle(BuildContext context, ScreenSize screenSize) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: screenSize.bodyLargeSize + 4,
            height: 1.35,
            shadows: navButtonShadows,
          );

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final horizontalPad = screenSize.horizontalPadding;
    final itemGap = horizontalPad * 0.35;
    final buttonWidth = screenSize.bodyLargeSize * 10;
    final buttonStyle = navButtonStyle(context, screenSize);

    final navContent = Wrap(
      spacing: itemGap,
      runSpacing: itemGap,
      children: [
        for (final item in navItems)
          HomeWelcomeNavButton(
            width: buttonWidth,
            key: ValueKey('home-welcome-nav-${item.label}'),
            label: item.label,
            style: buttonStyle,
            onPressed: item.onTap,
          ),
      ],
    );

    final paddedContent = Padding(
      padding: EdgeInsets.symmetric(
        vertical: horizontalPad / 3,
        horizontal: horizontalPad / 2,
      ),
      child: navContent,
    );

    final Widget body;
    if (wrapInGlassCard) {
      body = SizedBox(
        width: double.infinity,
        child: HomeGlassCard(
          hoverAnimation: glassHoverAnimation,
          child: paddedContent,
        ),
      );
    } else {
      body = paddedContent;
    }

    if (!animateEntrance) return body;

    return RevealWrap(
      key: const ValueKey('home-welcome-nav-card'),
      variant: RevealEntranceVariant.fade,
      resetWhenLeavingViewport: true,
      child: body,
    );
  }
}
