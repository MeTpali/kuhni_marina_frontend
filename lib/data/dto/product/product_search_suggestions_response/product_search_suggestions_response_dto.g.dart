// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_suggestions_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductSearchSuggestionsResponseDtoImpl
_$$ProductSearchSuggestionsResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductSearchSuggestionsResponseDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) => ProductSuggestionItemResponseDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProductSearchSuggestionsResponseDtoImplToJson(
  _$ProductSearchSuggestionsResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
