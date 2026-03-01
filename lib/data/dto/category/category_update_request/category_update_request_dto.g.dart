// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryUpdateRequestDtoImpl _$$CategoryUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryUpdateRequestDtoImpl(
  name: json['name'] as String,
  type: $enumDecode(_$CategoryTypeDtoEnumMap, json['type']),
  slug: json['slug'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$$CategoryUpdateRequestDtoImplToJson(
  _$CategoryUpdateRequestDtoImpl instance,
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
