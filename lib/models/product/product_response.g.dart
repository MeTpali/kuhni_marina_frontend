// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeEnumMap, json['type']),
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  price: json['price'] as String?,
  isNew: json['is_new'] as bool? ?? false,
  isHit: json['is_hit'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
  category: CategoryResponse.fromJson(json['category'] as Map<String, dynamic>),
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map(
            (e) => ProductAttributeResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImageResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductResponseImplToJson(
  _$ProductResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category_id': instance.categoryId,
  'type': _$ProductTypeEnumMap[instance.type]!,
  'slug': instance.slug,
  'description': instance.description,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'is_active': instance.isActive,
  'category': instance.category,
  'attributes': instance.attributes,
  'images': instance.images,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'message': instance.message,
};

const _$ProductTypeEnumMap = {
  ProductType.KITCHEN: 'KITCHEN',
  ProductType.FURNITURE: 'FURNITURE',
};
