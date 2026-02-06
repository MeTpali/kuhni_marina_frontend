// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeResponseImpl _$$ProductAttributeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeResponseImpl(
  attributeId: (json['attribute_id'] as num).toInt(),
  attributeName: json['attribute_name'] as String,
  attributeUnit: json['attribute_unit'] as String?,
  value: json['value'] as String,
);

Map<String, dynamic> _$$ProductAttributeResponseImplToJson(
  _$ProductAttributeResponseImpl instance,
) => <String, dynamic>{
  'attribute_id': instance.attributeId,
  'attribute_name': instance.attributeName,
  'attribute_unit': instance.attributeUnit,
  'value': instance.value,
};
