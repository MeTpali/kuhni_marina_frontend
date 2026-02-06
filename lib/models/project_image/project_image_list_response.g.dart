// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageListResponseImpl _$$ProjectImageListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectImageListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProjectImageResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectImageListResponseImplToJson(
  _$ProjectImageListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
