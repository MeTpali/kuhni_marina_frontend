import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/entities/discount/discount.dart';
import '../../../core/widgets/cards/product_card.dart';
import '../../../domain/models/product/product_list_item.dart';

/// Секция с заголовком и горизонтальным списком карточек товаров.
class HomeProductsSection extends ConsumerWidget {
  const HomeProductsSection({
    required this.title,
    required this.productList,
    super.key,
    this.onSeeAll,
    this.onProductTap,
  });

  final String title;
  final List<ProductListItem> productList;
  final VoidCallback? onSeeAll;
  final void Function(ProductListItem)? onProductTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (productList.isEmpty) {
      return const SizedBox.shrink();
    }

    final screenSize = context.screenSize;
    final cardHeight = screenSize.productCardDefaultHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.horizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.accent,
                  fontSize: screenSize.headlineSmallSize,
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
          height: cardHeight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.horizontalPadding,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            separatorBuilder: (_, __) =>
                SizedBox(width: screenSize.horizontalPadding),
            itemBuilder: (context, index) {
              final product = productList[index];
              final discount =
                  product.discount != null &&
                      product.discount!.discountPercent != null &&
                      product.discount!.finalPrice != null
                  ? Discount(
                      discountPercent: product.discount!.discountPercent!,
                      discountAmount: product.discount!.discountAmount ?? '',
                      finalPrice: product.discount!.finalPrice!,
                    )
                  : null;

              return ProductCard(
                screenSize: screenSize,
                name: product.name,
                categoryName: product.categoryName ?? '',
                images: product.images,
                isNew: product.isNew,
                isHit: product.isHit,
                price: product.price ?? '',
                rating: product.rating,
                reviewsCount: product.reviewsCount,
                discount: discount,
                onTap: () => onProductTap?.call(product),
              );
            },
          ),
        ),
      ],
    );
  }
}
