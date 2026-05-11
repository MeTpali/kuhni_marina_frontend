import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_glass_card.dart';

/// Поле поиска на главной (заглушка под будущий экран поиска).
class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final searchPadding = EdgeInsets.fromLTRB(
      s.searchBarPadding.left,
      s.searchBarPadding.top,
      s.searchBarPadding.right,
      s.searchBarPadding.bottom,
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: s.horizontalPadding),
      child: HomeGlassCard(
        onTap: onTap,
        child: Padding(
          padding: searchPadding,
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                size: s.searchIconSize,
                color: AppColors.graphite,
              ),
              SizedBox(width: s.horizontalPadding * 0.5),
              Text(
                'Поиск по каталогу кухонь',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.graphite,
                  fontSize: s.bodyLargeSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
