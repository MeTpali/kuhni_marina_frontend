// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageCreateRequestDtoImpl _$$ProjectImageCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectImageCreateRequestDtoImpl(
  projectId: (json['project_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool? ?? false,
);

Map<String, dynamic> _$$ProjectImageCreateRequestDtoImplToJson(
  _$ProjectImageCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
};
