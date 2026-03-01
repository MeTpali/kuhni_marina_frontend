// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListResponseDtoImpl _$$ProjectListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProjectResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectListResponseDtoImplToJson(
  _$ProjectListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
