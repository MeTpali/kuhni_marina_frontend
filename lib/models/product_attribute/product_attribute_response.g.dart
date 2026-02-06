// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeResponseImpl _$$ProductAttributeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeResponseImpl(
  productId: (json['product_id'] as num).toInt(),
  attributeId: (json['attribute_id'] as num).toInt(),
  value: json['value'] as String,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductAttributeResponseImplToJson(
  _$ProductAttributeResponseImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'attribute_id': instance.attributeId,
  'value': instance.value,
  'message': instance.message,
};
