import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_response.freezed.dart';
part 'product_attribute_response.g.dart';

@freezed
class ProductAttributeResponse with _$ProductAttributeResponse {
  const factory ProductAttributeResponse({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'message') String? message,
  }) = _ProductAttributeResponse;

  factory ProductAttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeResponseFromJson(json);
}
