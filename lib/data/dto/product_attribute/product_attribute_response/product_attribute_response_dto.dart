import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_response_dto.freezed.dart';
part 'product_attribute_response_dto.g.dart';

@freezed
class ProductAttributeResponseDto with _$ProductAttributeResponseDto {
  const factory ProductAttributeResponseDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'message') String? message,
  }) = _ProductAttributeResponseDto;

  factory ProductAttributeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeResponseDtoFromJson(json);
}
