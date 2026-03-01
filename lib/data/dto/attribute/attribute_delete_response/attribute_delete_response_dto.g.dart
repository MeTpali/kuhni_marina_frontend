// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeDeleteResponseDtoImpl _$$AttributeDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeDeleteResponseDtoImpl(
  attributeId: (json['attribute_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeDeleteResponseDtoImplToJson(
  _$AttributeDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'attribute_id': instance.attributeId,
  'message': instance.message,
};
