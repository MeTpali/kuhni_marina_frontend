import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_delete_response_dto.freezed.dart';
part 'product_delete_response_dto.g.dart';

@freezed
class ProductDeleteResponseDto with _$ProductDeleteResponseDto {
  const factory ProductDeleteResponseDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProductDeleteResponseDto;

  factory ProductDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDeleteResponseDtoFromJson(json);
}
