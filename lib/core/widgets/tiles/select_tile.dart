import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_icons.dart';
import '../../constants/app_colors.dart';

class SelectTile extends StatelessWidget {
  final Widget? leading;
  final String title;
  final bool isSelected;
  final String? value;
  final VoidCallback? onSelect;
  final double titleSpacing;
  const SelectTile({
    required this.title,
    required this.isSelected,
    this.value,
    this.leading,
    this.onSelect,
    this.titleSpacing = 14,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: isSelected ? null : onSelect,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.foundationWhite : AppColors.drWhite,
        border: Border.all(
          color: isSelected
              ? AppColors.transparentBlue
              : AppColors.unicornSilver,
        ),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14.0),
        child: Row(
          children: [
            if (leading != null) leading!,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: titleSpacing),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: isSelected
                        ? AppColors.blueGenie
                        : AppColors.kettleman,
                  ),
                ),
              ),
            ),
            if (value != null) ...[
              Text(
                value!,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: isSelected
                      ? AppColors.kettleman
                      : AppColors.uniformGrey,
                ),
              ),
              const SizedBox(width: 8),
            ],
            isSelected
                ? SvgPicture.asset(AppIcons.selectedCircle)
                : SvgPicture.asset(AppIcons.emptyCircle),
          ],
        ),
      ),
    ),
  );
}
