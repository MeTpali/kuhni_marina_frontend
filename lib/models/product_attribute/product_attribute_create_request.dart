import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_create_request.freezed.dart';
part 'product_attribute_create_request.g.dart';

@freezed
class ProductAttributeCreateRequest with _$ProductAttributeCreateRequest {
  const factory ProductAttributeCreateRequest({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'value') required String value,
  }) = _ProductAttributeCreateRequest;

  factory ProductAttributeCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeCreateRequestFromJson(json);
}
