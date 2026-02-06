// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryUpdateRequestImpl _$$CategoryUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryUpdateRequestImpl(
  name: json['name'] as String,
  type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
  slug: json['slug'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$$CategoryUpdateRequestImplToJson(
  _$CategoryUpdateRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': _$CategoryTypeEnumMap[instance.type]!,
  'slug': instance.slug,
  'parent_id': instance.parentId,
  'is_active': instance.isActive,
};

const _$CategoryTypeEnumMap = {
  CategoryType.KITCHEN: 'KITCHEN',
  CategoryType.FURNITURE: 'FURNITURE',
};
