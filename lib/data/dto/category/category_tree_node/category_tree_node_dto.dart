import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type_dto.dart';

part 'category_tree_node_dto.freezed.dart';
part 'category_tree_node_dto.g.dart';

@freezed
class CategoryTreeNodeDto with _$CategoryTreeNodeDto {
  const factory CategoryTreeNodeDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'type') required CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([]) @JsonKey(name: 'children') List<CategoryTreeNodeDto> children,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryTreeNodeDto;

  factory CategoryTreeNodeDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryTreeNodeDtoFromJson(json);
}
