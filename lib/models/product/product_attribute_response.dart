import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_response.freezed.dart';
part 'product_attribute_response.g.dart';

@freezed
class ProductAttributeResponse with _$ProductAttributeResponse {
  const factory ProductAttributeResponse({
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'attribute_name') required String attributeName,
    @JsonKey(name: 'attribute_unit') String? attributeUnit,
    @JsonKey(name: 'value') required String value,
  }) = _ProductAttributeResponse;

  factory ProductAttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeResponseFromJson(json);
}
