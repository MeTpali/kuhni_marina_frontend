// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_suggestion_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductSuggestionItemResponseDtoImpl
_$$ProductSuggestionItemResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductSuggestionItemResponseDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      discount: json['discount'] == null
          ? null
          : ProductDiscountInfoDto.fromJson(
              json['discount'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$ProductSuggestionItemResponseDtoImplToJson(
  _$ProductSuggestionItemResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'description': instance.description,
  'price': instance.price,
  'discount': instance.discount,
};
