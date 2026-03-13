import 'package:freezed_annotation/freezed_annotation.dart';

import '../attribute_facet_item/attribute_facet_item_dto.dart';
import '../category_facet_tree_node/category_facet_tree_node_dto.dart';

part 'catalog_facets_dto.freezed.dart';
part 'catalog_facets_dto.g.dart';

@freezed
class CatalogFacetsDto with _$CatalogFacetsDto {
  const factory CatalogFacetsDto({
    @Default([])
    @JsonKey(name: 'categories')
    List<CategoryFacetTreeNodeDto> categories,
    @Default([])
    @JsonKey(name: 'attributes')
    List<AttributeFacetItemDto> attributes,
  }) = _CatalogFacetsDto;

  factory CatalogFacetsDto.fromJson(Map<String, dynamic> json) =>
      _$CatalogFacetsDtoFromJson(json);
}
