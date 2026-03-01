import 'package:frontend/data/dto/product/product_create_request/product_create_request_dto.dart';
import 'package:frontend/data/dto/product/product_type_dto.dart';
import 'package:frontend/data/dto/product/product_update_request/product_update_request_dto.dart';
import 'package:frontend/domain/models/product/product_create_request.dart';
import 'package:frontend/domain/models/product/product_update_request.dart';
import 'package:frontend/domain/models/product_type/product_type.dart';

class ProductRequestMappers {
  static ProductCreateRequestDto toCreateDto(ProductCreateRequest from) {
    return ProductCreateRequestDto(
      name: from.name,
      categoryId: from.categoryId,
      type: _toDtoType(from.type),
      slug: from.slug,
      description: from.description,
      price: from.price,
      isNew: from.isNew,
      isHit: from.isHit,
      attributes: from.attributes,
      images: from.images,
    );
  }

  static ProductUpdateRequestDto toUpdateDto(ProductUpdateRequest from) {
    return ProductUpdateRequestDto(
      name: from.name,
      categoryId: from.categoryId,
      type: from.type != null ? _toDtoType(from.type!) : null,
      slug: from.slug,
      description: from.description,
      price: from.price,
      isNew: from.isNew,
      isHit: from.isHit,
      attributes: from.attributes,
      images: from.images,
    );
  }

  static ProductTypeDto _toDtoType(ProductType domain) {
    return ProductTypeDto.values.byName(domain.name);
  }
}
