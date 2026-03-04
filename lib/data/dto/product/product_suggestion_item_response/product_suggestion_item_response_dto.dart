import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_discount_info/product_discount_info_dto.dart';

part 'product_suggestion_item_response_dto.freezed.dart';
part 'product_suggestion_item_response_dto.g.dart';

/// Элемент подсказки поиска (DTO): id, название, картинка, описание, цена, скидка.
@freezed
class ProductSuggestionItemResponseDto with _$ProductSuggestionItemResponseDto {
  const factory ProductSuggestionItemResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'discount') ProductDiscountInfoDto? discount,
  }) = _ProductSuggestionItemResponseDto;

  factory ProductSuggestionItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductSuggestionItemResponseDtoFromJson(json);
}
