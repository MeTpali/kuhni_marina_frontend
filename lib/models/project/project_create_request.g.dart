// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCreateRequestImpl _$$ProjectCreateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectCreateRequestImpl(
  name: json['name'] as String,
  description: json['description'] as String?,
  location: json['location'] as String?,
);

Map<String, dynamic> _$$ProjectCreateRequestImplToJson(
  _$ProjectCreateRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
};
