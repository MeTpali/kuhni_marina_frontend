import 'package:frontend/data/dto/category/category_response/category_response_dto.dart';
import 'package:frontend/data/dto/category/category_type_dto.dart';
import 'package:frontend/domain/models/category/category.dart';
import 'package:frontend/domain/models/category_type/category_type.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class CategoryMapper implements IMapper<CategoryResponseDto, Category> {
  @override
  Category map(CategoryResponseDto from) {
    return Category(
      id: from.id,
      name: from.name,
      slug: from.slug,
      type: _toDomainType(from.type),
      parentId: from.parentId,
      isActive: from.isActive,
    );
  }

  static CategoryType _toDomainType(CategoryTypeDto dto) {
    return CategoryType.fromName(dto.name);
  }
}
