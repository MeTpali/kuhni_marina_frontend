import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_create_request_dto.freezed.dart';
part 'product_attribute_create_request_dto.g.dart';

@freezed
class ProductAttributeCreateRequestDto with _$ProductAttributeCreateRequestDto {
  const factory ProductAttributeCreateRequestDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'value') required String value,
  }) = _ProductAttributeCreateRequestDto;

  factory ProductAttributeCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeCreateRequestDtoFromJson(json);
}
