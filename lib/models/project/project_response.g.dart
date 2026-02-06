// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectResponseImpl _$$ProjectResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  location: json['location'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectResponseImplToJson(
  _$ProjectResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
  'created_at': instance.createdAt.toIso8601String(),
  'message': instance.message,
};
