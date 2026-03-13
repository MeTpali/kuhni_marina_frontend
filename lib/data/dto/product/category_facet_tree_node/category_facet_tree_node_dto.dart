import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_facet_tree_node_dto.freezed.dart';
part 'category_facet_tree_node_dto.g.dart';

@freezed
class CategoryFacetTreeNodeDto with _$CategoryFacetTreeNodeDto {
  const factory CategoryFacetTreeNodeDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @Default(0) @JsonKey(name: 'count') int count,
    @Default([])
    @JsonKey(name: 'children')
    List<CategoryFacetTreeNodeDto> children,
  }) = _CategoryFacetTreeNodeDto;

  factory CategoryFacetTreeNodeDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryFacetTreeNodeDtoFromJson(json);
}
