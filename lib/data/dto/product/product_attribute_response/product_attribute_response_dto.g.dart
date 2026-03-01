// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeResponseDtoImpl _$$ProductAttributeResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeResponseDtoImpl(
  attributeId: (json['attribute_id'] as num).toInt(),
  attributeName: json['attribute_name'] as String,
  value: json['value'] as String,
  attributeUnit: json['attribute_unit'] as String?,
);

Map<String, dynamic> _$$ProductAttributeResponseDtoImplToJson(
  _$ProductAttributeResponseDtoImpl instance,
) => <String, dynamic>{
  'attribute_id': instance.attributeId,
  'attribute_name': instance.attributeName,
  'value': instance.value,
  'attribute_unit': instance.attributeUnit,
};
