import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_favorite_mutation_response_dto.freezed.dart';
part 'product_favorite_mutation_response_dto.g.dart';

@freezed
class ProductFavoriteMutationResponseDto
    with _$ProductFavoriteMutationResponseDto {
  const factory ProductFavoriteMutationResponseDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProductFavoriteMutationResponseDto;

  factory ProductFavoriteMutationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductFavoriteMutationResponseDtoFromJson(json);
}
