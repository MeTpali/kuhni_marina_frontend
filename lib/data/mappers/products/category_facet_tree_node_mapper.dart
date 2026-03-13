import '../../../domain/models/product/category_facet_tree_node.dart';
import '../../dto/product/category_facet_tree_node/category_facet_tree_node_dto.dart';
import '../i_mapper.dart';

class CategoryFacetTreeNodeMapper
    implements IMapper<CategoryFacetTreeNodeDto, CategoryFacetTreeNode> {
  @override
  CategoryFacetTreeNode map(CategoryFacetTreeNodeDto from) =>
      CategoryFacetTreeNode(
        id: from.id,
        name: from.name,
        slug: from.slug,
        count: from.count,
        children: from.children.map(map).toList(),
      );
}
