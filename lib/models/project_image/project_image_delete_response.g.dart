// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageDeleteResponseImpl _$$ProjectImageDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectImageDeleteResponseImpl(
  projectImageId: (json['project_image_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectImageDeleteResponseImplToJson(
  _$ProjectImageDeleteResponseImpl instance,
) => <String, dynamic>{
  'project_image_id': instance.projectImageId,
  'message': instance.message,
};
