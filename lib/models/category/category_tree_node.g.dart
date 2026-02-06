// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_tree_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryTreeNodeImpl _$$CategoryTreeNodeImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryTreeNodeImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
  parentId: (json['parent_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool? ?? true,
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryTreeNode.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryTreeNodeImplToJson(
  _$CategoryTreeNodeImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'type': _$CategoryTypeEnumMap[instance.type]!,
  'parent_id': instance.parentId,
  'is_active': instance.isActive,
  'children': instance.children,
  'message': instance.message,
};

const _$CategoryTypeEnumMap = {
  CategoryType.KITCHEN: 'KITCHEN',
  CategoryType.FURNITURE: 'FURNITURE',
};
