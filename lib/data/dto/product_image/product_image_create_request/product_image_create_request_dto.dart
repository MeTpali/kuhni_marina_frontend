import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_create_request_dto.freezed.dart';
part 'product_image_create_request_dto.g.dart';

@freezed
class ProductImageCreateRequestDto with _$ProductImageCreateRequestDto {
  const factory ProductImageCreateRequestDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
  }) = _ProductImageCreateRequestDto;

  factory ProductImageCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductImageCreateRequestDtoFromJson(json);
}
