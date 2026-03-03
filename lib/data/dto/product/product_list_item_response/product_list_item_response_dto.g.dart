// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_item_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListItemResponseDtoImpl _$$ProductListItemResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductListItemResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  type: $enumDecode(_$ProductTypeDtoEnumMap, json['type']),
  categoryName: json['category_name'] as String?,
  price: json['price'] as String?,
  isNew: json['is_new'] as bool? ?? false,
  isHit: json['is_hit'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
  mainImage: json['main_image'] as String?,
  discount: json['discount'] == null
      ? null
      : ProductDiscountInfoDto.fromJson(
          json['discount'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$ProductListItemResponseDtoImplToJson(
  _$ProductListItemResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'category_id': instance.categoryId,
  'type': _$ProductTypeDtoEnumMap[instance.type]!,
  'category_name': instance.categoryName,
  'price': instance.price,
  'is_new': instance.isNew,
  'is_hit': instance.isHit,
  'is_active': instance.isActive,
  'main_image': instance.mainImage,
  'discount': instance.discount,
};

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.KITCHEN: 'KITCHEN',
  ProductTypeDto.FURNITURE: 'FURNITURE',
};
