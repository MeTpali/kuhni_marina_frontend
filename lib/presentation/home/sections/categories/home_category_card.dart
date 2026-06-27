import 'package:flutter/material.dart';

import '../../../../core/constants/screen_size.dart';
import '../../../../domain/models/category/category_tree_node.dart';
import 'home_hover_image_card.dart';

/// Карточка категории в bento-сетке.
class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({
    required this.category,
    required this.screenSize,
    required this.revealIndex,
    this.textScale = 1,
    super.key,
    this.onTap,
  });

  final CategoryTreeNode category;
  final ScreenSize screenSize;
  final int revealIndex;
  final double textScale;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => HomeHoverImageCard(
        title: category.name,
        imageUrl: category.imageUrl ?? '',
        screenSize: screenSize,
        revealIndex: revealIndex,
        revealKeyPrefix: 'category-title-${category.id}',
        textScale: textScale,
        onTap: onTap,
      );
}
