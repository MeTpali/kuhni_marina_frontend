// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageDeleteResponseDtoImpl
_$$ProjectImageDeleteResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImageDeleteResponseDtoImpl(
      projectImageId: (json['project_image_id'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProjectImageDeleteResponseDtoImplToJson(
  _$ProjectImageDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'project_image_id': instance.projectImageId,
  'message': instance.message,
};
