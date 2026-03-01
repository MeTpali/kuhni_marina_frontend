import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_attribute_response/product_attribute_response_dto.dart';

part 'product_attribute_list_response_dto.freezed.dart';
part 'product_attribute_list_response_dto.g.dart';

@freezed
class ProductAttributeListResponseDto with _$ProductAttributeListResponseDto {
  const factory ProductAttributeListResponseDto({
    @JsonKey(name: 'items') required List<ProductAttributeResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProductAttributeListResponseDto;

  factory ProductAttributeListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeListResponseDtoFromJson(json);
}
