import 'package:frontend/data/dto/product/product_catalog_response/product_catalog_response_dto.dart';
import 'package:frontend/domain/models/product/product_catalog.dart';
import 'package:frontend/data/mappers/i_mapper.dart';
import 'package:frontend/data/mappers/products/product_list_item_mapper.dart';

class ProductCatalogMapper
    implements IMapper<ProductCatalogResponseDto, ProductCatalog> {
  final ProductListItemMapper _itemMapper = ProductListItemMapper();

  @override
  ProductCatalog map(ProductCatalogResponseDto from) {
    return ProductCatalog(
      items: from.items.map(_itemMapper.map).toList(),
      total: from.total,
      page: from.page,
      pageSize: from.pageSize,
      totalPages: from.totalPages,
    );
  }
}
