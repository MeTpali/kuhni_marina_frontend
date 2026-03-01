import 'package:frontend/data/dto/product/product_list_item_response/product_list_item_response_dto.dart';
import 'package:frontend/data/dto/product/product_type_dto.dart';
import 'package:frontend/domain/models/product/product_list_item.dart';
import 'package:frontend/domain/models/product_type/product_type.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class ProductListItemMapper
    implements IMapper<ProductListItemResponseDto, ProductListItem> {
  @override
  ProductListItem map(ProductListItemResponseDto from) {
    return ProductListItem(
      id: from.id,
      name: from.name,
      slug: from.slug,
      categoryId: from.categoryId,
      type: _toDomainType(from.type),
      categoryName: from.categoryName,
      price: from.price,
      isNew: from.isNew,
      isHit: from.isHit,
      isActive: from.isActive,
      mainImage: from.mainImage,
    );
  }

  static ProductType _toDomainType(ProductTypeDto dto) {
    return ProductType.fromName(dto.name);
  }
}
