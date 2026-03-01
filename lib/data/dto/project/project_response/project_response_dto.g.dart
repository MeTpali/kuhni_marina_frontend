// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectResponseDtoImpl _$$ProjectResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  location: json['location'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectResponseDtoImplToJson(
  _$ProjectResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
  'description': instance.description,
  'location': instance.location,
  'message': instance.message,
};
