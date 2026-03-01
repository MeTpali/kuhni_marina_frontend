import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_update_request_dto.freezed.dart';
part 'product_attribute_update_request_dto.g.dart';

@freezed
class ProductAttributeUpdateRequestDto with _$ProductAttributeUpdateRequestDto {
  const factory ProductAttributeUpdateRequestDto({
    @JsonKey(name: 'value') required String value,
  }) = _ProductAttributeUpdateRequestDto;

  factory ProductAttributeUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeUpdateRequestDtoFromJson(json);
}
