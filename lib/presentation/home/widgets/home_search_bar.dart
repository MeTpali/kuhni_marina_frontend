import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';

/// Поле поиска на главной (заглушка под будущий экран поиска).
class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: s.horizontalPadding),
      child: Material(
        color: AppColors.surface,
        borderRadius: AppRadius.mdAll,
        elevation: 0,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadius.mdAll,
          child: Container(
            padding: s.searchBarPadding,
            decoration: BoxDecoration(
              borderRadius: AppRadius.mdAll,
              border: Border.all(color: AppColors.outline),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: s.searchIconSize,
                  color: AppColors.onSurfaceTertiary,
                ),
                SizedBox(width: s.horizontalPadding * 0.5),
                Text(
                  'Поиск по каталогу кухонь',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.onSurfaceTertiary,
                        fontSize: s.bodyLargeSize,
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
