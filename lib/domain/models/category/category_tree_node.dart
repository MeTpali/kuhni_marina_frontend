import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_type/category_type.dart';

part 'category_tree_node.freezed.dart';

/// Узел дерева категорий (для списка/дерева в UI).
@freezed
class CategoryTreeNode with _$CategoryTreeNode {
  const factory CategoryTreeNode({
    required int id,
    required String name,
    required String slug,
    required CategoryType type,
    int? parentId,
    String? imageUrl,
    @Default(true) bool isActive,
    @Default([]) List<CategoryTreeNode> children,
  }) = _CategoryTreeNode;
}
