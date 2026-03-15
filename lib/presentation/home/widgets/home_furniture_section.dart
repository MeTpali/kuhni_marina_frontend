import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../providers/home_di.dart';
import 'home_products_section.dart';

/// Секция «Мебель» на главной: заголовок, популярная мебель (хиты), новинки.
class HomeFurnitureSection extends ConsumerWidget {
  const HomeFurnitureSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = context.screenSize;
    final hitsAsync = ref.watch(HomeDi.homeHitsFurnitureProvider);
    final newAsync = ref.watch(HomeDi.homeNewFurnitureProvider);

    final hitsHasProducts =
        hitsAsync.valueOrNull?.items.isNotEmpty ?? false;
    final newHasProducts =
        newAsync.valueOrNull?.items.isNotEmpty ?? false;
    if (!hitsHasProducts && !newHasProducts &&
        hitsAsync.hasValue && newAsync.hasValue) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: screenSize.sectionSpacing),
        hitsAsync.when(
          data: (catalog) => catalog.items.isEmpty
              ? const SizedBox.shrink()
              : HomeProductsSection(
                  title: 'Популярная мебель',
                  productList: catalog.items,
                ),
          loading: () => const _SectionPlaceholder(title: 'Популярная мебель'),
          error: (_, __) => const SizedBox.shrink(),
        ),
        if (hitsHasProducts && newHasProducts)
          SizedBox(height: screenSize.sectionSpacing),
        newAsync.when(
          data: (catalog) => catalog.items.isEmpty
              ? const SizedBox.shrink()
              : HomeProductsSection(
                  title: 'Новинки',
                  productList: catalog.items,
                ),
          loading: () => const _SectionPlaceholder(title: 'Новинки'),
          error: (_, __) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _SectionPlaceholder extends StatelessWidget {
  const _SectionPlaceholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final cardHeight = screenSize.productCardDefaultHeight;
    final cardWidth = screenSize.productCardDefaultWidth;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.accent,
                  fontSize: screenSize.headlineSmallSize,
                ),
          ),
          SizedBox(height: screenSize.sectionTitleBottomSpacing),
          SizedBox(
            height: cardHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) =>
                  SizedBox(width: screenSize.horizontalPadding),
              itemBuilder: (_, __) => _ProductCardSkeleton(
                width: cardWidth,
                borderRadius: screenSize.cardBorderRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductCardSkeleton extends StatelessWidget {
  const _ProductCardSkeleton({
    required this.width,
    required this.borderRadius,
  });

  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 3, child: SizedBox()),
            SizedBox(height: 8),
            Expanded(child: SizedBox()),
          ],
        ),
      );
}
