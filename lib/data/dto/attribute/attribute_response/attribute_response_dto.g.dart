// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeResponseDtoImpl _$$AttributeResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  unit: json['unit'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeResponseDtoImplToJson(
  _$AttributeResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'unit': instance.unit,
  'message': instance.message,
};
