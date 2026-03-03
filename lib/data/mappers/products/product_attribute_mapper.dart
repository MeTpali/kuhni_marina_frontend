import '../../../domain/models/product/product_attribute.dart';
import '../../dto/product/product_attribute_response/product_attribute_response_dto.dart';
import '../i_mapper.dart';

class ProductAttributeMapper
    implements IMapper<ProductAttributeResponseDto, ProductAttribute> {
  @override
  ProductAttribute map(ProductAttributeResponseDto from) => ProductAttribute(
      attributeId: from.attributeId,
      attributeName: from.attributeName,
      value: from.value,
      attributeUnit: from.attributeUnit,
    );
}
