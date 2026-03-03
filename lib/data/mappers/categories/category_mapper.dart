import '../../../domain/models/category/category.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../dto/category/category_response/category_response_dto.dart';
import '../../dto/category/category_type_dto.dart';
import '../i_mapper.dart';

class CategoryMapper implements IMapper<CategoryResponseDto, Category> {
  @override
  Category map(CategoryResponseDto from) => Category(
      id: from.id,
      name: from.name,
      slug: from.slug,
      type: _toDomainType(from.type),
      parentId: from.parentId,
      isActive: from.isActive,
    );

  static CategoryType _toDomainType(CategoryTypeDto dto) => CategoryType.fromName(dto.name);
}
