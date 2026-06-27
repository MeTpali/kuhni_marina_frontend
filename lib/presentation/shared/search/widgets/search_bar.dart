import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/cards/home_glass_card.dart';

/// Поле поиска по каталогу: заглушка или редактируемое поле в модальном окне.
class CatalogSearchBar extends StatelessWidget {
  const CatalogSearchBar({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.autofocus = false,
    this.onTap,
    this.includeOuterPadding = true,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final bool autofocus;
  final VoidCallback? onTap;
  final bool includeOuterPadding;

  bool get _isEditable => controller != null;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final searchPadding = EdgeInsets.fromLTRB(
      s.searchBarPadding.left,
      s.searchBarPadding.top,
      s.searchBarPadding.right,
      s.searchBarPadding.bottom,
    );

    final field = Row(
      children: [
        Icon(
          Icons.search_rounded,
          size: s.searchIconSize,
          color: AppColors.graphite,
        ),
        SizedBox(width: s.horizontalPadding * 0.5),
        Expanded(
          child: _isEditable
              ? TextField(
                  controller: controller,
                  focusNode: focusNode,
                  autofocus: autofocus,
                  onChanged: onChanged,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.graphite,
                        fontSize: s.bodyLargeSize,
                      ),
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'Поиск по каталогу кухонь',
                    hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.graphite.withValues(alpha: 0.55),
                          fontSize: s.bodyLargeSize,
                        ),
                    contentPadding: EdgeInsets.zero,
                  ),
                )
              : Text(
                  'Поиск по каталогу кухонь',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.graphite,
                        fontSize: s.bodyLargeSize,
                      ),
                ),
        ),
      ],
    );

    final card = HomeGlassCard(
      onTap: _isEditable ? null : onTap,
      hoverAnimation: !_isEditable,
      child: Padding(padding: searchPadding, child: field),
    );

    if (!includeOuterPadding) return card;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: s.horizontalPadding),
      child: card,
    );
  }
}
