import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_product_smooth_card.dart';
import '../../../core/widgets/horizontal_scroll/horizontal_loop_carousel.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../domain/models/product/product_list_item.dart';
import 'home_section_backdrop.dart';

export 'home_section_backdrop.dart';

/// Секция с заголовком и горизонтальным списком карточек товаров.
class HomeProductsSection extends ConsumerWidget {
  const HomeProductsSection({
    required this.title,
    required this.productList,
    super.key,
    this.onSeeAll,
    this.onProductTap,
    this.onFavoriteTap,
    this.backdropStyle = HomeSectionBackdropStyle.none,
  });

  final String title;
  final List<ProductListItem> productList;
  final VoidCallback? onSeeAll;
  final void Function(ProductListItem)? onProductTap;
  final void Function(ProductListItem)? onFavoriteTap;
  final HomeSectionBackdropStyle backdropStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (productList.isEmpty) {
      return const SizedBox.shrink();
    }

    final screenSize = context.screenSize;
    final imageSize = screenSize.productCardDefaultWidth * 1.5;
    final listHeight = imageSize + 118;
    final gap = screenSize.horizontalPadding;
    final glassVerticalEdge = backdropStyle == HomeSectionBackdropStyle.none
        ? screenSize.sectionSpacing
        : screenSize.sectionGlassBlockVerticalMargin;

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: glassVerticalEdge),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.horizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RevealWrap(
                key: ValueKey('products-title-$title'),
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
              if (onSeeAll != null)
                TextButton(
                  onPressed: onSeeAll,
                  child: Text(
                    'Смотреть все',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.accentLight,
                      fontSize: screenSize.labelLargeSize,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: screenSize.sectionTitleBottomSpacing),
        SizedBox(
          height: listHeight,
          child: HorizontalLoopCarousel<ProductListItem>(
            items: productList,
            itemKey: (p) => p.id,
            itemWidth: imageSize,
            gap: gap,
            height: listHeight,
            screenSize: screenSize,
            itemBuilder: (context, product, index) => RevealWrap(
              key: ValueKey('product-card-$title-${product.id}-$index'),
              variant: RevealEntranceVariant.fade,
              resetWhenLeavingViewport: true,
              child: SizedBox(
                width: imageSize,
                child: HomeProductSmoothCard(
                  screenSize: screenSize,
                  imageSize: imageSize,
                  name: product.name,
                  images: product.images,
                  price: product.price ?? '',
                  isFavorite: product.isFavourite,
                  onTap: () => onProductTap?.call(product),
                  onFavoriteTap: onFavoriteTap != null
                      ? () => onFavoriteTap!(product)
                      : null,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: glassVerticalEdge),
      ],
    );

    return HomeSectionBackdrop(style: backdropStyle, child: content);
  }
}
