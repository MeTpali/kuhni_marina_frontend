import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/product_card_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../../domain/models/category_type/category_type.dart';
import '../../providers/categories/home_categories_providers.dart';
import 'home_categories_bento_grid.dart';
import '../../../shared/section/section_backdrop.dart';

/// Bento-сетка категорий каталога (кухни или мебель).
class HomeCategoriesSection extends ConsumerWidget {
  const HomeCategoriesSection({
    required this.title,
    required this.categoryType,
    super.key,
  });

  final String title;
  final CategoryType categoryType;

  static const _backdropStyle = SectionBackdropStyle.glassHeavy;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeCategoriesProvider(categoryType));
    final screenSize = context.screenSize;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;

    if (!state.isLoading && !state.hasItems && state.errorMessage == null) {
      return const SizedBox.shrink();
    }

    if (state.errorMessage != null && !state.hasItems) {
      return const SizedBox.shrink();
    }

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: glassVerticalEdge),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.horizontalPadding,
          ),
          child: RevealWrap(
            key: ValueKey('categories-section-title-$categoryType'),
            variant: RevealEntranceVariant.fadeSlideFromTop,
            resetWhenLeavingViewport: true,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.graphite,
                fontWeight: FontWeight.w600,
                fontSize: screenSize.headlineMediumSize,
              ),
            ),
          ),
        ),
        SizedBox(height: screenSize.sectionTitleBottomSpacing),
        if (state.isLoading && !state.hasItems)
          _CategoriesLoadingGrid(screenSize: screenSize)
        else
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.horizontalPadding,
            ),
            child: HomeCategoriesBentoGrid(
              categories: state.items.take(8).toList(),
              screenSize: screenSize,
            ),
          ),
        SizedBox(height: glassVerticalEdge),
      ],
    );

    return SectionBackdrop(style: _backdropStyle, child: content);
  }
}

class _CategoriesLoadingGrid extends StatelessWidget {
  const _CategoriesLoadingGrid({required this.screenSize});

  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    final gap = screenSize.horizontalPadding * 0.75;
    const cellHeight = 140.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.horizontalPadding),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _SkeletonBox(
                  height: cellHeight * 2 + gap,
                  borderRadius: screenSize.cardBorderRadius,
                ),
              ),
              SizedBox(width: gap),
              Expanded(
                child: Column(
                  children: [
                    _SkeletonBox(
                      height: cellHeight,
                      borderRadius: screenSize.cardBorderRadius,
                    ),
                    SizedBox(height: gap),
                    _SkeletonBox(
                      height: cellHeight,
                      borderRadius: screenSize.cardBorderRadius,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SkeletonBox extends StatelessWidget {
  const _SkeletonBox({required this.height, required this.borderRadius});

  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => Container(
    height: height,
    decoration: BoxDecoration(
      color: AppColors.surfaceElevated.withValues(alpha: 0.35),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
  );
}
