import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../domain/models/product/product_list_item.dart';

/// Карточка товара для горизонтальных блоков на главной.
class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    required this.product,
    super.key,
    this.onTap,
  });

  final ProductListItem product;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const cardWidth = 160.0;
    const imageHeight = 140.0;

    return SizedBox(
      width: cardWidth,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadius.mdAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: AppRadius.mdAll,
                child: SizedBox(
                  height: imageHeight,
                  width: cardWidth,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AppImage(
                        url: product.mainImage ?? '',
                        fit: BoxFit.cover,
                        borderRadius: 0,
                        backgroundColor: AppColors.neutral10,
                      ),
                      if (product.isNew || product.isHit) ...[
                        Positioned(
                          top: AppSpacing.xs,
                          left: AppSpacing.xs,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (product.isHit)
                                _Badge(label: 'Хит', color: AppColors.accent),
                              if (product.isHit && product.isNew)
                                const SizedBox(width: AppSpacing.xs),
                              if (product.isNew)
                                _Badge(
                                  label: 'Новинка',
                                  color: AppColors.primaryVariant,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                product.name,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.onSurface,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: AppSpacing.xs),
              if (product.discount != null &&
                  product.discount!.finalPrice != null) ...[
                if (product.price != null && product.price != product.discount!.finalPrice)
                  Text(
                    product.price!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.onSurfaceTertiary,
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                Text(
                  product.discount!.finalPrice!,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ] else if (product.price != null && product.price!.isNotEmpty)
                Text(
                  product.price!,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs,
        vertical: AppSpacing.xxs,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppRadius.xsAll,
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
