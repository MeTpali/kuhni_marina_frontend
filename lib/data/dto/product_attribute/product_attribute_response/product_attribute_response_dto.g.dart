// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeResponseDtoImpl _$$ProductAttributeResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeResponseDtoImpl(
  productId: (json['product_id'] as num).toInt(),
  attributeId: (json['attribute_id'] as num).toInt(),
  value: json['value'] as String,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductAttributeResponseDtoImplToJson(
  _$ProductAttributeResponseDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'attribute_id': instance.attributeId,
  'value': instance.value,
  'message': instance.message,
};
