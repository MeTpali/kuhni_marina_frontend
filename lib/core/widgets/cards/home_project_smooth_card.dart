import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/home_sizes.dart';
import '../../constants/product_card_sizes.dart';
import '../../constants/screen_size.dart';
import '../images/app_image.dart';

/// Карточка проекта для горизонтального списка «Портфолио» на главной:
/// превью 4:3 и название (до 2 строк).
class HomeProjectSmoothCard extends StatelessWidget {
  const HomeProjectSmoothCard({
    required this.screenSize,
    required this.name,
    required this.cardWidth,
    this.imageUrl,
    super.key,
    this.onTap,
  });

  final ScreenSize screenSize;
  final String name;
  final double cardWidth;
  final String? imageUrl;
  final VoidCallback? onTap;

  static const double _nameFontSize = 31;

  @override
  Widget build(BuildContext context) {
    final imageHeight = cardWidth / HomeSizes.homeProjectCardAspectRatio;
    final nameStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColors.base100,
          fontWeight: FontWeight.w600,
          fontSize: _nameFontSize,
          height: 1.25,
        );

    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onTap,
            child: SizedBox(
              width: cardWidth,
              height: imageHeight,
              child: AppImage(
                url: imageUrl ?? '',
                width: double.infinity,
                height: double.infinity,
                borderRadius: screenSize.cardBorderRadius,
                backgroundColor: AppColors.primaryContainer,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          GestureDetector(
            onTap: onTap,
            child: Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: nameStyle,
            ),
          ),
        ],
      ),
    );
  }
}
