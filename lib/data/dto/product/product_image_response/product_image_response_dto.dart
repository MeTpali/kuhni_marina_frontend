import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_response_dto.freezed.dart';
part 'product_image_response_dto.g.dart';

@freezed
class ProductImageResponseDto with _$ProductImageResponseDto {
  const factory ProductImageResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'is_main') required bool isMain,
  }) = _ProductImageResponseDto;

  factory ProductImageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImageResponseDtoFromJson(json);
}
