// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseDtoImpl _$$ProductResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeDtoEnumMap, json['type']),
  category: CategoryResponseDto.fromJson(
    json['category'] as Map<String, dynamic>,
  ),
  createdAt: json['created_at'] as String,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  price: json['price'] as String?,
  isNew: json['is_new'] as bool? ?? false,
  isHit: json['is_hit'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductAttributeResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map(
            (e) => ProductImageResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  updatedAt: json['updated_at'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductResponseDtoImplToJson(
  _$ProductResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category_id': instance.categoryId,
  'type': _$ProductTypeDtoEnumMap[instance.type]!,
  'category': instance.category,
  'created_at': instance.createdAt,
  'slug': instance.slug,
  'description': instance.description,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'is_active': instance.isActive,
  'attributes': instance.attributes,
  'images': instance.images,
  'updated_at': instance.updatedAt,
  'message': instance.message,
};

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.KITCHEN: 'KITCHEN',
  ProductTypeDto.FURNITURE: 'FURNITURE',
};
