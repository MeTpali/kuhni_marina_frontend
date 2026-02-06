// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListResponseImpl _$$ProjectListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProjectResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectListResponseImplToJson(
  _$ProjectListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
