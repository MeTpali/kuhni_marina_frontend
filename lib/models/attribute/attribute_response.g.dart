// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeResponseImpl _$$AttributeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  unit: json['unit'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeResponseImplToJson(
  _$AttributeResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'unit': instance.unit,
  'message': instance.message,
};
