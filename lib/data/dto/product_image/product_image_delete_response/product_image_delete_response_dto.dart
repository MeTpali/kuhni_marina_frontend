import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_delete_response_dto.freezed.dart';
part 'product_image_delete_response_dto.g.dart';

@freezed
class ProductImageDeleteResponseDto with _$ProductImageDeleteResponseDto {
  const factory ProductImageDeleteResponseDto({
    @JsonKey(name: 'product_image_id') required int productImageId,
    @JsonKey(name: 'message') String? message,
  }) = _ProductImageDeleteResponseDto;

  factory ProductImageDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDeleteResponseDtoFromJson(json);
}
