// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectUpdateRequestDtoImpl _$$ProjectUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectUpdateRequestDtoImpl(
  name: json['name'] as String?,
  description: json['description'] as String?,
  location: json['location'] as String?,
);

Map<String, dynamic> _$$ProjectUpdateRequestDtoImplToJson(
  _$ProjectUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
};
