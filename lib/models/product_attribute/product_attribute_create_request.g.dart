// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeCreateRequestImpl
_$$ProductAttributeCreateRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProductAttributeCreateRequestImpl(
      productId: (json['product_id'] as num).toInt(),
      attributeId: (json['attribute_id'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$ProductAttributeCreateRequestImplToJson(
  _$ProductAttributeCreateRequestImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'attribute_id': instance.attributeId,
  'value': instance.value,
};
