import 'package:freezed_annotation/freezed_annotation.dart';

import 'attribute_facet_item.dart';
import 'category_facet_tree_node.dart';

part 'catalog_facets.freezed.dart';

@freezed
class CatalogFacets with _$CatalogFacets {
  const factory CatalogFacets({
    @Default([]) List<CategoryFacetTreeNode> categories,
    @Default([]) List<AttributeFacetItem> attributes,
  }) = _CatalogFacets;
}
