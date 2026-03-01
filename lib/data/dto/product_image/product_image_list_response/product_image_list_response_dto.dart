import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_image_response/product_image_response_dto.dart';

part 'product_image_list_response_dto.freezed.dart';
part 'product_image_list_response_dto.g.dart';

@freezed
class ProductImageListResponseDto with _$ProductImageListResponseDto {
  const factory ProductImageListResponseDto({
    @JsonKey(name: 'items') required List<ProductImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProductImageListResponseDto;

  factory ProductImageListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImageListResponseDtoFromJson(json);
}
