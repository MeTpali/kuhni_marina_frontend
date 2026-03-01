// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCreateRequestDtoImpl _$$ProductCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductCreateRequestDtoImpl(
  name: json['name'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeDtoEnumMap, json['type']),
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  price: json['price'],
  isNew: json['is_new'] as bool? ?? false,
  isHit: json['is_hit'] as bool? ?? false,
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductCreateRequestDtoImplToJson(
  _$ProductCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_id': instance.categoryId,
  'type': _$ProductTypeDtoEnumMap[instance.type]!,
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
