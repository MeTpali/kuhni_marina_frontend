import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/category/category_tree_node.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../../domain/repositories/i_categories_repository.dart';
import 'home_categories_state.dart';

/// Загрузка категорий каталога для блока на главной.
class HomeCategoriesNotifier extends StateNotifier<HomeCategoriesState> {
  HomeCategoriesNotifier({
    required ICategoriesRepository categoriesRepository,
    required CategoryType categoryType,
  }) : _categoriesRepository = categoriesRepository,
       _categoryType = categoryType,
       super(HomeCategoriesState.initial);

  final ICategoriesRepository _categoriesRepository;
  final CategoryType _categoryType;

  Future<void> load() async {
    state = state.copyWith(isLoading: true, clearError: true);

    final result = await _categoriesRepository.getCategoriesByType(
      _categoryType,
    );

    state = result.when(
      success: (tree) => HomeCategoriesState(
        items: _flattenForDisplay(tree),
        isLoading: false,
      ),
      error: (message) =>
          HomeCategoriesState(isLoading: false, errorMessage: message),
    );
  }

  /// Корневые узлы с детьми раскрываются в дочерние карточки; листья без детей — как есть.
  static List<CategoryTreeNode> _flattenForDisplay(
    List<CategoryTreeNode> roots,
  ) {
    final result = <CategoryTreeNode>[];
    for (final node in roots) {
      if (!node.isActive) continue;
      final activeChildren = node.children
          .where((c) => c.isActive)
          .toList(growable: false);
      if (activeChildren.isNotEmpty) {
        result.addAll(activeChildren);
      } else {
        result.add(node);
      }
    }
    return result;
  }
}
