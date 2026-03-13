import '../../../domain/models/product_attribute/product_attribute_create_request.dart';
import '../../../domain/models/product_attribute/product_attribute_update_request.dart';
import '../../dto/product_attribute/product_attribute_create_request/product_attribute_create_request_dto.dart';
import '../../dto/product_attribute/product_attribute_update_request/product_attribute_update_request_dto.dart';

class ProductAttributeRequestMappers {
  static ProductAttributeCreateRequestDto toCreateDto(
    ProductAttributeCreateRequest request,
  ) =>
      ProductAttributeCreateRequestDto(
        productId: request.productId,
        attributeId: request.attributeId,
        value: request.value,
      );

  static ProductAttributeUpdateRequestDto toUpdateDto(
    ProductAttributeUpdateRequest request,
  ) =>
      ProductAttributeUpdateRequestDto(
        value: request.value,
      );
}
