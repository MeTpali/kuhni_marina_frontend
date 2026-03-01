// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDeleteResponseDtoImpl _$$ProjectDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectDeleteResponseDtoImpl(
  projectId: (json['project_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectDeleteResponseDtoImplToJson(
  _$ProjectDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'message': instance.message,
};
