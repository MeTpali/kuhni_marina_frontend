// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectCreateRequestDtoImpl _$$ProjectCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectCreateRequestDtoImpl(
  name: json['name'] as String,
  description: json['description'] as String?,
  location: json['location'] as String?,
);

Map<String, dynamic> _$$ProjectCreateRequestDtoImplToJson(
  _$ProjectCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
};
