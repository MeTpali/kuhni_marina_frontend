// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryCreateRequestImpl _$$CategoryCreateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryCreateRequestImpl(
  name: json['name'] as String,
  type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
  slug: json['slug'] as String?,
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$CategoryCreateRequestImplToJson(
  _$CategoryCreateRequestImpl instance,
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
