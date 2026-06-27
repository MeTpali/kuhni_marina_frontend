import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import 'home_welcome_nav_panel.dart';

export 'home_welcome_nav_panel.dart';

/// Приветственный hero-блок на главной: на высоту экрана под app bar.
class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({required this.navItems, super.key});

  final List<HomeWelcomeNavItem> navItems;

  static const _headline = 'ЗДЕСЬ НАЧИНАЕТСЯ ДОМ';

  static const _titleShadows = HomeWelcomeNavPanel.navButtonShadows;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final expanded = screenSize.isExpanded;
    final statusTop = MediaQuery.paddingOf(context).top;
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final heroHeight = MediaQuery.sizeOf(context).height - statusTop;
    final horizontalPad = screenSize.horizontalPadding;
    final bottomPad = screenSize.bannerPadding + bottomInset;

    final headlineStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w600,
          fontSize: screenSize.headlineMediumSize * 1.5,
          height: 1.1,
          letterSpacing: 0.4,
          shadows: _titleShadows,
        );

    final headline = RevealWrap(
      key: const ValueKey('home-welcome-headline'),
      variant: RevealEntranceVariant.fadeSlideFromTop,
      resetWhenLeavingViewport: true,
      child: Text(_headline, style: headlineStyle),
    );

    final navCard = HomeWelcomeNavPanel(navItems: navItems);

    if (expanded) {
      return SizedBox(
        height: heroHeight,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            horizontalPad,
            0,
            horizontalPad,
            bottomPad,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width * 0.45,
                    ),
                    child: headline,
                  ),
                ),
              ),
              SizedBox(width: horizontalPad),
              Expanded(
                flex: 6,
                child: Align(alignment: Alignment.bottomRight, child: navCard),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: heroHeight,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPad,
                0,
                horizontalPad,
                bottomPad,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.85,
                ),
                child: headline,
              ),
            ),
          ),
        ),
        navCard,
      ],
    );
  }
}
