import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_create_request.freezed.dart';

@freezed
class ProductAttributeCreateRequest with _$ProductAttributeCreateRequest {
  const factory ProductAttributeCreateRequest({
    required int productId,
    required int attributeId,
    required String value,
  }) = _ProductAttributeCreateRequest;
}
