import '../../../domain/models/product/product.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../dto/product/product_response/product_response_dto.dart';
import '../../dto/product/product_type_dto.dart';
import '../categories/category_mapper.dart';
import '../i_mapper.dart';
import 'product_attribute_mapper.dart';
import 'product_discount_info_mapper.dart';
import 'product_image_mapper.dart';

class ProductMapper implements IMapper<ProductResponseDto, Product> {
  final CategoryMapper _categoryMapper = CategoryMapper();
  final ProductAttributeMapper _attributeMapper = ProductAttributeMapper();
  final ProductImageMapper _imageMapper = ProductImageMapper();
  final ProductDiscountInfoMapper _discountMapper = ProductDiscountInfoMapper();

  @override
  Product map(ProductResponseDto from) {
    final category = _categoryMapper.map(from.category);
    return Product(
      id: from.id,
      name: from.name,
      categoryId: from.categoryId,
      type: _toDomainType(from.type),
      category: category,
      createdAt: from.createdAt,
      slug: from.slug,
      description: from.description,
      price: from.price,
      isNew: from.isNew,
      isHit: from.isHit,
      isActive: from.isActive,
      attributes: from.attributes.map(_attributeMapper.map).toList(),
      images: from.images.map(_imageMapper.map).toList(),
      updatedAt: from.updatedAt,
      discount: from.discount != null ? _discountMapper.map(from.discount!) : null,
    );
  }

  static ProductType _toDomainType(ProductTypeDto dto) =>
      ProductType.fromName(dto.name);
}
