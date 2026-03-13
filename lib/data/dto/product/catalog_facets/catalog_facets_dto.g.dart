// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_facets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogFacetsDtoImpl _$$CatalogFacetsDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CatalogFacetsDtoImpl(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => CategoryFacetTreeNodeDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map(
            (e) => AttributeFacetItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CatalogFacetsDtoImplToJson(
  _$CatalogFacetsDtoImpl instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'attributes': instance.attributes,
};
