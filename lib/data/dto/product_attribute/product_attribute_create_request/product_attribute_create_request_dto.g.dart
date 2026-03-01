// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeCreateRequestDtoImpl
_$$ProductAttributeCreateRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductAttributeCreateRequestDtoImpl(
      productId: (json['product_id'] as num).toInt(),
      attributeId: (json['attribute_id'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$ProductAttributeCreateRequestDtoImplToJson(
  _$ProductAttributeCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'attribute_id': instance.attributeId,
  'value': instance.value,
};
