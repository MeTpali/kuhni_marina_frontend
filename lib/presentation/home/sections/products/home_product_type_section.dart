import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/product_card_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../domain/models/product_type/product_type.dart';
import '../../providers/products/home_product_catalog_providers.dart';
import '../../../shared/section/products_carousel_section.dart';

extension on ProductType {
  String get _popularTitle => switch (this) {
        ProductType.kitchen => 'Популярные кухни',
        ProductType.furniture => 'Популярная мебель',
      };

  String get _newTitle => switch (this) {
        ProductType.kitchen => 'Новинки кухонь',
        ProductType.furniture => 'Новинки мебели',
      };

  String get _moreLabel => switch (this) {
        ProductType.kitchen => 'Ещё больше кухонь',
        ProductType.furniture => 'Ещё больше мебели',
      };
}

/// Секция товаров на главной: популярные и новинки по [ProductType].
class HomeProductTypeSection extends ConsumerWidget {
  const HomeProductTypeSection({
    required this.productType,
    super.key,
    this.popularSectionKey,
    this.newSectionKey,
  });

  final ProductType productType;
  final Key? popularSectionKey;
  final Key? newSectionKey;

  static Widget _keyedSection({required Key? key, required Widget child}) =>
      key != null ? KeyedSubtree(key: key, child: child) : child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hitsAsync = ref.watch(homeProductHitsProvider(productType));
    final newAsync = ref.watch(homeProductNewProvider(productType));

    final hitsHasProducts = hitsAsync.valueOrNull?.items.isNotEmpty ?? false;
    final newHasProducts = newAsync.valueOrNull?.items.isNotEmpty ?? false;
    if (!hitsHasProducts &&
        !newHasProducts &&
        hitsAsync.hasValue &&
        newAsync.hasValue) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        hitsAsync.when(
          data: (catalog) => catalog.items.isEmpty
              ? const SizedBox.shrink()
              : _keyedSection(
                  key: popularSectionKey,
                  child: ProductsCarouselSection(
                    title: productType._popularTitle,
                    productList: catalog.items,
                    moreLabel: productType._moreLabel,
                    backdropStyle: SectionBackdropStyle.glassLight,
                  ),
                ),
          loading: () => _SectionPlaceholder(title: productType._popularTitle),
          error: (_, __) => const SizedBox.shrink(),
        ),
        newAsync.when(
          data: (catalog) => catalog.items.isEmpty
              ? const SizedBox.shrink()
              : _keyedSection(
                  key: newSectionKey,
                  child: ProductsCarouselSection(
                    title: productType._newTitle,
                    productList: catalog.items,
                    moreLabel: productType._moreLabel,
                    backdropStyle: SectionBackdropStyle.glassHeavy,
                  ),
                ),
          loading: () => _SectionPlaceholder(title: productType._newTitle),
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
