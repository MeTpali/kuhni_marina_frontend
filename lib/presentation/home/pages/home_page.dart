import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/theme/app_theme.dart';
import '../widgets/home_banner_section.dart';
import '../widgets/home_campaigns_section.dart';
import '../widgets/home_footer.dart';
import '../widgets/home_furniture_section.dart';
import '../widgets/home_kitchens_section.dart';
import '../widgets/home_search_bar.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = context.screenSize;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HomeBannerSection(),
                SizedBox(height: screenSize.sectionSpacing),
                const HomeSearchBar(),
                SizedBox(height: screenSize.sectionSpacing),
                const HomeKitchensSection(),
                const HomeFurnitureSection(),
                const HomeCampaignsSection(),
                SizedBox(height: screenSize.sectionSpacing),
                const HomeFooter(),
                SizedBox(height: screenSize.sectionSpacing),
                const _ThemeToggle(),
                SizedBox(height: screenSize.sectionSpacing),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeToggle extends ConsumerWidget {
  const _ThemeToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final isDark =
        themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            Theme.of(context).brightness == Brightness.dark);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenSize.horizontalPadding,
        ),
        child: Material(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            onTap: () {
              ref.read(themeModeProvider.notifier).state = isDark
                  ? ThemeMode.light
                  : ThemeMode.dark;
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: context.screenSize.themeTogglePadding,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isDark ? Icons.dark_mode : Icons.light_mode,
                    color: AppColors.accent,
                    size: context.screenSize.themeToggleIconSize,
                  ),
                  SizedBox(width: context.screenSize.horizontalPadding * 0.5),
                  Text(
                    isDark ? 'Тёмная тема' : 'Светлая тема',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.onSurface,
                      fontSize: context.screenSize.labelLargeSize,
                    ),
                  ),
                  SizedBox(width: context.screenSize.horizontalPadding * 0.5),
                  Icon(
                    Icons.swap_horiz,
                    color: AppColors.onSurfaceVariant,
                    size: context.screenSize.themeToggleIconSmallSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
