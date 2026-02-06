// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeDeleteResponseImpl _$$AttributeDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeDeleteResponseImpl(
  attributeId: (json['attribute_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeDeleteResponseImplToJson(
  _$AttributeDeleteResponseImpl instance,
) => <String, dynamic>{
  'attribute_id': instance.attributeId,
  'message': instance.message,
};
