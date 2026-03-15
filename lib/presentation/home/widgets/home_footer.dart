import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';

/// Футер главной: общая информация о компании.
class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Container(
      width: double.infinity,
      padding: s.footerPadding,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Кухни Марина',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: s.headlineSmallSize,
                  ),
            ),
            SizedBox(height: s.sectionTitleBottomSpacing * 0.5),
            Text(
              'Элитные кухни на заказ. Индивидуальный дизайн, премиальные материалы и безупречное качество сборки.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white.withValues(alpha: 0.9),
                    fontSize: s.bodyMediumSize,
                  ),
            ),
            SizedBox(height: s.sectionSpacing * 0.75),
            Text(
              'Контакты',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.accentLight,
                    fontWeight: FontWeight.w600,
                    fontSize: s.titleSmallSize,
                  ),
            ),
            SizedBox(height: s.sectionTitleBottomSpacing * 0.25),
            Text(
              'Телефон: +7 (XXX) XXX-XX-XX',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white.withValues(alpha: 0.9),
                    fontSize: s.bodyMediumSize,
                  ),
            ),
            SizedBox(height: s.sectionTitleBottomSpacing * 0.25),
            Text(
              'Email: info@kuhni-marina.ru',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.white.withValues(alpha: 0.9),
                    fontSize: s.bodyMediumSize,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
