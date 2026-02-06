// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageResponseImpl _$$ProjectImageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectImageResponseImpl(
  id: (json['id'] as num).toInt(),
  projectId: (json['project_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool? ?? false,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectImageResponseImplToJson(
  _$ProjectImageResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'project_id': instance.projectId,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
  'message': instance.message,
};
