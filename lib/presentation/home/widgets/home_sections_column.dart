import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../home_section_keys.dart';
import 'home_about_section.dart';
import 'home_advantages_section.dart';
import 'home_banner_section.dart';
import 'home_campaigns_section.dart';
import 'home_categories_section.dart';
import 'home_design_request_section.dart';
import 'home_footer.dart';
import 'home_portfolio_section.dart';
import 'home_product_type_section.dart';
import 'home_welcome_section.dart';

/// Колонка секций главной страницы.
class HomeSectionsColumn extends StatelessWidget {
  const HomeSectionsColumn({
    required this.keys,
    required this.welcomeNavItems,
    super.key,
  });

  final HomeSectionKeys keys;
  final List<HomeWelcomeNavItem> welcomeNavItems;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeWelcomeSection(navItems: welcomeNavItems),
        SizedBox(height: screenSize.sectionSpacing),
        const HomeBannerSection(),
        KeyedSubtree(
          key: keys.kitchenCatalog,
          child: const HomeCategoriesSection(
            title: 'Каталог кухонь',
            categoryType: CategoryType.kitchen,
          ),
        ),
        HomeProductTypeSection(
          productType: ProductType.kitchen,
          popularSectionKey: keys.popularKitchens,
          newSectionKey: keys.newKitchens,
        ),
        KeyedSubtree(
          key: keys.furnitureCatalog,
          child: const HomeCategoriesSection(
            title: 'Каталог мебели',
            categoryType: CategoryType.furniture,
          ),
        ),
        HomeProductTypeSection(
          productType: ProductType.furniture,
          popularSectionKey: keys.popularFurniture,
          newSectionKey: keys.newFurniture,
        ),
        HomePortfolioSection(sectionKey: keys.portfolio),
        KeyedSubtree(
          key: keys.campaigns,
          child: const HomeCampaignsSection(),
        ),
        KeyedSubtree(
          key: keys.designRequest,
          child: const HomeDesignRequestSection(),
        ),
        const HomeAdvantagesSection(),
        KeyedSubtree(
          key: keys.about,
          child: const HomeAboutSection(),
        ),
        const HomeFooter(),
        const HomeThemeToggle(),
      ],
    );
  }
}

class HomeThemeToggle extends ConsumerWidget {
  const HomeThemeToggle({super.key});

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
          vertical: context.screenSize.sectionSpacing,
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
