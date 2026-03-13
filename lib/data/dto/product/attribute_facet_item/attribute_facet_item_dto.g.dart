// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_facet_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeFacetItemDtoImpl _$$AttributeFacetItemDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeFacetItemDtoImpl(
  attributeId: (json['attribute_id'] as num).toInt(),
  attributeName: json['attribute_name'] as String,
  unit: json['unit'] as String?,
  values:
      (json['values'] as List<dynamic>?)
          ?.map(
            (e) => AttributeFacetValueDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$AttributeFacetItemDtoImplToJson(
  _$AttributeFacetItemDtoImpl instance,
) => <String, dynamic>{
  'attribute_id': instance.attributeId,
  'attribute_name': instance.attributeName,
  'unit': instance.unit,
  'values': instance.values,
};
