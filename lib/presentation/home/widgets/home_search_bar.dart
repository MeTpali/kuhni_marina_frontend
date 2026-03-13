import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';

/// Поле поиска на главной (заглушка под будущий экран поиска).
class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Material(
        color: AppColors.surface,
        borderRadius: AppRadius.mdAll,
        elevation: 0,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadius.mdAll,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            decoration: BoxDecoration(
              borderRadius: AppRadius.mdAll,
              border: Border.all(color: AppColors.outline),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 22,
                  color: AppColors.onSurfaceTertiary,
                ),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  'Поиск по каталогу кухонь',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.onSurfaceTertiary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
