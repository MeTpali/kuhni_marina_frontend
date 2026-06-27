import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_glass_panel.dart';
import 'shell_app_bar.dart';
import 'shell_nav_button.dart';

class MainShellSideMenu extends StatelessWidget {
  const MainShellSideMenu({
    required this.selectedIndex,
    required this.onSelect,
    super.key,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final itemPadding = EdgeInsets.symmetric(
      horizontal: s.horizontalPadding * 0.25,
      vertical: s.horizontalPadding * 0.15,
    );
    final itemSpacing = s.homeSideMenuNavItemSpacing;

    return HomeGlassPanel(
      border: HomeGlassPanel.sideSheetBorderFromRight(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            s.horizontalPadding,
            s.horizontalPadding * 0.5,
            s.horizontalPadding,
            s.horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: s.horizontalPadding * 0.25,
                  bottom: s.sectionSpacing * 0.5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    AppImages.logo,
                    height: s.homeAppBarLogoHeight + 8,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.image_not_supported_outlined,
                      size: s.homeAppBarLogoHeight + 8,
                      color: AppColors.onSurface,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var i = 0; i < ShellAppBar.navLabels.length; i++) ...[
                        if (i > 0) SizedBox(height: itemSpacing),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ShellNavButton(
                            key: ValueKey('main-side-nav-$i'),
                            label: ShellAppBar.navLabels[i],
                            screenSize: s,
                            selected: i == selectedIndex,
                            padding: itemPadding,
                            fontSize: ScreenSize.expanded.homeAppBarNavTextSize,
                            showSelectedUnderline: true,
                            underlineHeight:
                                ScreenSize.expanded.homeAppBarUnderlineHeight,
                            onPressed: () => onSelect(i),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
