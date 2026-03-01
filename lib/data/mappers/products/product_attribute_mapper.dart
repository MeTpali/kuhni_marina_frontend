import 'package:frontend/data/dto/product/product_attribute_response/product_attribute_response_dto.dart';
import 'package:frontend/domain/models/product/product_attribute.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class ProductAttributeMapper
    implements IMapper<ProductAttributeResponseDto, ProductAttribute> {
  @override
  ProductAttribute map(ProductAttributeResponseDto from) {
    return ProductAttribute(
      attributeId: from.attributeId,
      attributeName: from.attributeName,
      value: from.value,
      attributeUnit: from.attributeUnit,
    );
  }
}
