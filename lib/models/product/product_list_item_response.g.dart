// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListItemResponseImpl _$$ProductListItemResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductListItemResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeEnumMap, json['type']),
  categoryName: json['category_name'] as String?,
  price: json['price'] as String?,
  isNew: json['is_new'] as bool? ?? false,
  isHit: json['is_hit'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
  mainImage: json['main_image'] as String?,
);

Map<String, dynamic> _$$ProductListItemResponseImplToJson(
  _$ProductListItemResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'category_id': instance.categoryId,
  'type': _$ProductTypeEnumMap[instance.type]!,
  'category_name': instance.categoryName,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'is_active': instance.isActive,
  'main_image': instance.mainImage,
};

const _$ProductTypeEnumMap = {
  ProductType.KITCHEN: 'KITCHEN',
  ProductType.FURNITURE: 'FURNITURE',
};
