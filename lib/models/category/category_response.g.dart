// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool? ?? true,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryResponseImplToJson(
  _$CategoryResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'type': _$CategoryTypeEnumMap[instance.type]!,
  'parent_id': instance.parentId,
  'is_active': instance.isActive,
  'message': instance.message,
};

const _$CategoryTypeEnumMap = {
  CategoryType.KITCHEN: 'KITCHEN',
  CategoryType.FURNITURE: 'FURNITURE',
};
