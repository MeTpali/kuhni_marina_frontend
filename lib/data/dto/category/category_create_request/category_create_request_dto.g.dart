// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryCreateRequestDtoImpl _$$CategoryCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryCreateRequestDtoImpl(
  name: json['name'] as String,
  type: $enumDecode(_$CategoryTypeDtoEnumMap, json['type']),
  slug: json['slug'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$CategoryCreateRequestDtoImplToJson(
  _$CategoryCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': _$CategoryTypeDtoEnumMap[instance.type]!,
  'slug': instance.slug,
  'parent_id': instance.parentId,
  'is_active': instance.isActive,
};

const _$CategoryTypeDtoEnumMap = {
  CategoryTypeDto.KITCHEN: 'KITCHEN',
  CategoryTypeDto.FURNITURE: 'FURNITURE',
};
