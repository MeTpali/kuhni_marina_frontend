import '../../../domain/models/product_attribute/product_attribute_item.dart';
import '../../dto/product_attribute/product_attribute_response/product_attribute_response_dto.dart';
import '../i_mapper.dart';

class ProductAttributeItemMapper
    implements IMapper<ProductAttributeResponseDto, ProductAttributeItem> {
  @override
  ProductAttributeItem map(ProductAttributeResponseDto from) =>
      ProductAttributeItem(
        productId: from.productId,
        attributeId: from.attributeId,
        value: from.value,
      );
}
