// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_facet_tree_node_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryFacetTreeNodeDtoImpl _$$CategoryFacetTreeNodeDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryFacetTreeNodeDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  count: (json['count'] as num?)?.toInt() ?? 0,
  children:
      (json['children'] as List<dynamic>?)
          ?.map(
            (e) => CategoryFacetTreeNodeDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CategoryFacetTreeNodeDtoImplToJson(
  _$CategoryFacetTreeNodeDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'count': instance.count,
  'children': instance.children,
};
