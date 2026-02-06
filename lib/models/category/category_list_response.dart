import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_tree_node.dart';

part 'category_list_response.freezed.dart';
part 'category_list_response.g.dart';

@freezed
class CategoryListResponse with _$CategoryListResponse {
  const factory CategoryListResponse({
    @JsonKey(name: 'items') required List<CategoryTreeNode> items,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryListResponse;

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseFromJson(json);
}
