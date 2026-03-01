// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tree_node_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryTreeNodeDtoImpl _$$CategoryTreeNodeDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryTreeNodeDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  type: $enumDecode(_$CategoryTypeDtoEnumMap, json['type']),
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool? ?? true,
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryTreeNodeDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryTreeNodeDtoImplToJson(
  _$CategoryTreeNodeDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'type': _$CategoryTypeDtoEnumMap[instance.type]!,
  'parent_id': instance.parentId,
  'is_active': instance.isActive,
  'children': instance.children,
  'message': instance.message,
};

const _$CategoryTypeDtoEnumMap = {
  CategoryTypeDto.KITCHEN: 'KITCHEN',
  CategoryTypeDto.FURNITURE: 'FURNITURE',
};
