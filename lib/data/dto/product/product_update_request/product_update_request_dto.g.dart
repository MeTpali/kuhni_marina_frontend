// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductUpdateRequestDtoImpl _$$ProductUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductUpdateRequestDtoImpl(
  name: json['name'] as String?,
  categoryId: (json['category_id'] as num?)?.toInt(),
  type: $enumDecodeNullable(_$ProductTypeDtoEnumMap, json['type']),
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  price: json['price'],
  isNew: json['is_new'] as bool?,
  isHit: json['is_hit'] as bool?,
  attributes: (json['attributes'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  images: (json['images'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$$ProductUpdateRequestDtoImplToJson(
  _$ProductUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_id': instance.categoryId,
  'type': _$ProductTypeDtoEnumMap[instance.type],
  'slug': instance.slug,
  'description': instance.description,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'attributes': instance.attributes,
  'images': instance.images,
};

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.KITCHEN: 'KITCHEN',
  ProductTypeDto.FURNITURE: 'FURNITURE',
};
