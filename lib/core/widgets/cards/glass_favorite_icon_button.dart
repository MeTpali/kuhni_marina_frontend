import 'package:flutter/material.dart';

import '../../constants/screen_size.dart';
import 'smooth_icon_button.dart';

/// Круглая кнопка избранного на стеклянной подложке.
class GlassFavoriteIconButton extends StatelessWidget {
  const GlassFavoriteIconButton({
    required this.screenSize,
    required this.isFavorite,
    this.onTap,
    super.key,
  });

  final ScreenSize screenSize;
  final bool isFavorite;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => SmoothIconButton(
        screenSize: screenSize,
        icon: isFavorite
            ? Icons.favorite_rounded
            : Icons.favorite_border_rounded,
        selected: isFavorite,
        onTap: onTap,
      );
}
