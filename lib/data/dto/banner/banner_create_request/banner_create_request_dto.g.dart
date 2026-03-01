// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerCreateRequestDtoImpl _$$BannerCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BannerCreateRequestDtoImpl(
  title: json['title'] as String,
  imageUrl: json['image_url'] as String,
  linkUrl: json['link_url'] as String?,
  position: (json['position'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$BannerCreateRequestDtoImplToJson(
  _$BannerCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'image_url': instance.imageUrl,
  'link_url': instance.linkUrl,
  'position': instance.position,
  'is_active': instance.isActive,
};
