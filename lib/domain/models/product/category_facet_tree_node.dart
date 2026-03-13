import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_facet_tree_node.freezed.dart';

@freezed
class CategoryFacetTreeNode with _$CategoryFacetTreeNode {
  const factory CategoryFacetTreeNode({
    required int id,
    required String name,
    required String slug,
    @Default(0) int count,
    @Default([]) List<CategoryFacetTreeNode> children,
  }) = _CategoryFacetTreeNode;
}
