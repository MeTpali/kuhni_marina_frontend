// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageListResponseDtoImpl _$$ProjectImageListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectImageListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProjectImageResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectImageListResponseDtoImplToJson(
  _$ProjectImageListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
