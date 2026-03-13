// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerUpdateRequestDtoImpl _$$BannerUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BannerUpdateRequestDtoImpl(
  title: json['title'] as String,
  imageUrl: json['image_url'] as String,
  linkUrl: json['link_url'] as String?,
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$BannerUpdateRequestDtoImplToJson(
  _$BannerUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'image_url': instance.imageUrl,
  'link_url': instance.linkUrl,
  'priority': instance.priority,
  'is_active': instance.isActive,
};
