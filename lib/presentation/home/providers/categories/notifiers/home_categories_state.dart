import '../../../../../domain/models/category/category_tree_node.dart';

/// Состояние блока каталога категорий на главной.
class HomeCategoriesState {
  const HomeCategoriesState({
    this.items = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final List<CategoryTreeNode> items;
  final bool isLoading;
  final String? errorMessage;

  static const initial = HomeCategoriesState(isLoading: true);

  bool get hasItems => items.isNotEmpty;

  HomeCategoriesState copyWith({
    List<CategoryTreeNode>? items,
    bool? isLoading,
    String? errorMessage,
    bool clearError = false,
  }) {
    return HomeCategoriesState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
