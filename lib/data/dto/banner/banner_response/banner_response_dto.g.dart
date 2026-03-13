// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerResponseDtoImpl _$$BannerResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BannerResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  imageUrl: json['image_url'] as String,
  linkUrl: json['link_url'] as String?,
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$BannerResponseDtoImplToJson(
  _$BannerResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image_url': instance.imageUrl,
  'link_url': instance.linkUrl,
  'priority': instance.priority,
  'is_active': instance.isActive,
  'message': instance.message,
};
