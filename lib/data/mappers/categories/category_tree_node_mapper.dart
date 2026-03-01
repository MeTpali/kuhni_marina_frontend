import 'package:frontend/data/dto/category/category_tree_node/category_tree_node_dto.dart';
import 'package:frontend/data/dto/category/category_type_dto.dart';
import 'package:frontend/domain/models/category/category_tree_node.dart';
import 'package:frontend/domain/models/category_type/category_type.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class CategoryTreeNodeMapper implements IMapper<CategoryTreeNodeDto, CategoryTreeNode> {
  @override
  CategoryTreeNode map(CategoryTreeNodeDto from) {
    return CategoryTreeNode(
      id: from.id,
      name: from.name,
      slug: from.slug,
      type: _toDomainType(from.type),
      parentId: from.parentId,
      isActive: from.isActive,
      children: from.children.map((e) => map(e)).toList(),
    );
  }

  static CategoryType _toDomainType(CategoryTypeDto dto) {
    return CategoryType.fromName(dto.name);
  }
}
