// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDeleteResponseImpl _$$ProjectDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectDeleteResponseImpl(
  projectId: (json['project_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectDeleteResponseImplToJson(
  _$ProjectDeleteResponseImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'message': instance.message,
};
