import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type/category_type.dart';

part 'category_tree_node.freezed.dart';
part 'category_tree_node.g.dart';

@freezed
class CategoryTreeNode with _$CategoryTreeNode {
  const factory CategoryTreeNode({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'type') required CategoryType type,
    @JsonKey(name: 'parent_id') int? parentId,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([]) @JsonKey(name: 'children') List<CategoryTreeNode> children,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryTreeNode;

  factory CategoryTreeNode.fromJson(Map<String, dynamic> json) =>
      _$CategoryTreeNodeFromJson(json);
}
