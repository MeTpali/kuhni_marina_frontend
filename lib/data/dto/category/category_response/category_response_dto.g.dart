// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseDtoImpl _$$CategoryResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  type: $enumDecode(_$CategoryTypeDtoEnumMap, json['type']),
  parentId: (json['parent_id'] as num?)?.toInt(),
  imageUrl: json['image_url'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryResponseDtoImplToJson(
  _$CategoryResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'type': _$CategoryTypeDtoEnumMap[instance.type]!,
  'parent_id': instance.parentId,
  'image_url': instance.imageUrl,
  'is_active': instance.isActive,
  'message': instance.message,
};

const _$CategoryTypeDtoEnumMap = {
  CategoryTypeDto.KITCHEN: 'KITCHEN',
  CategoryTypeDto.FURNITURE: 'FURNITURE',
};
