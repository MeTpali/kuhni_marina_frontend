import '../../../domain/models/product/catalog_facets.dart';
import '../../dto/product/catalog_facets/catalog_facets_dto.dart';
import '../i_mapper.dart';
import 'attribute_facet_item_mapper.dart';
import 'category_facet_tree_node_mapper.dart';

class CatalogFacetsMapper implements IMapper<CatalogFacetsDto, CatalogFacets> {
  final CategoryFacetTreeNodeMapper _categoryMapper =
      CategoryFacetTreeNodeMapper();
  final AttributeFacetItemMapper _attributeMapper = AttributeFacetItemMapper();

  @override
  CatalogFacets map(CatalogFacetsDto from) => CatalogFacets(
        categories: from.categories.map(_categoryMapper.map).toList(),
        attributes: from.attributes.map(_attributeMapper.map).toList(),
      );
}
