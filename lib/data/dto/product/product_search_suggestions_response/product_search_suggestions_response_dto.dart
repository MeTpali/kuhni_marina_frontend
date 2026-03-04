import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_suggestion_item_response/product_suggestion_item_response_dto.dart';

part 'product_search_suggestions_response_dto.freezed.dart';
part 'product_search_suggestions_response_dto.g.dart';

@freezed
class ProductSearchSuggestionsResponseDto
    with _$ProductSearchSuggestionsResponseDto {
  const factory ProductSearchSuggestionsResponseDto({
    @JsonKey(name: 'items')
    required List<ProductSuggestionItemResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProductSearchSuggestionsResponseDto;

  factory ProductSearchSuggestionsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductSearchSuggestionsResponseDtoFromJson(json);
}
