// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCreateRequestImpl _$$ProductCreateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ProductCreateRequestImpl(
  name: json['name'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeEnumMap, json['type']),
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

Map<String, dynamic> _$$ProductCreateRequestImplToJson(
  _$ProductCreateRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'category_id': instance.categoryId,
  'type': _$ProductTypeEnumMap[instance.type]!,
  'slug': instance.slug,
  'description': instance.description,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'attributes': instance.attributes,
  'images': instance.images,
};

const _$ProductTypeEnumMap = {
  ProductType.KITCHEN: 'KITCHEN',
  ProductType.FURNITURE: 'FURNITURE',
};
