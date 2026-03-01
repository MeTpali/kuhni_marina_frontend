import 'package:frontend/data/dto/category/category_create_request/category_create_request_dto.dart';
import 'package:frontend/data/dto/category/category_type_dto.dart';
import 'package:frontend/data/dto/category/category_update_request/category_update_request_dto.dart';
import 'package:frontend/domain/models/category/category_create_request.dart';
import 'package:frontend/domain/models/category/category_update_request.dart';
import 'package:frontend/domain/models/category_type/category_type.dart';

/// Преобразование доменных запросов в DTO (для API).
class CategoryRequestMappers {
  static CategoryCreateRequestDto toCreateDto(CategoryCreateRequest from) {
    return CategoryCreateRequestDto(
      name: from.name,
      type: _toDtoType(from.type),
      slug: from.slug,
      parentId: from.parentId,
      isActive: from.isActive,
    );
  }

  static CategoryUpdateRequestDto toUpdateDto(CategoryUpdateRequest from) {
    return CategoryUpdateRequestDto(
      name: from.name,
      type: _toDtoType(from.type),
      slug: from.slug,
      parentId: from.parentId,
      isActive: from.isActive,
    );
  }

  static CategoryTypeDto _toDtoType(CategoryType domain) {
    return CategoryTypeDto.values.byName(domain.name);
  }
}
