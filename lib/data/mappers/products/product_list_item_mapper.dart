import '../../../domain/models/product/product_list_item.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../dto/product/product_list_item_response/product_list_item_response_dto.dart';
import '../../dto/product/product_type_dto.dart';
import '../i_mapper.dart';
import 'product_discount_info_mapper.dart';

class ProductListItemMapper
    implements IMapper<ProductListItemResponseDto, ProductListItem> {
  final ProductDiscountInfoMapper _discountMapper = ProductDiscountInfoMapper();

  @override
  ProductListItem map(ProductListItemResponseDto from) => ProductListItem(
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
        discount:
            from.discount != null ? _discountMapper.map(from.discount!) : null,
      );

  static ProductType _toDomainType(ProductTypeDto dto) =>
      ProductType.fromName(dto.name);
}
