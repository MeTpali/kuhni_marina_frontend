// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignUpdateRequestDtoImpl _$$CampaignUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CampaignUpdateRequestDtoImpl(
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  bannerImageUrl: json['banner_image_url'] as String?,
  landingUrl: json['landing_url'] as String?,
  badgeText: json['badge_text'] as String?,
  startDate: json['start_date'] as String?,
  endDate: json['end_date'] as String?,
  isActive: json['is_active'] as bool?,
  priority: (json['priority'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CampaignUpdateRequestDtoImplToJson(
  _$CampaignUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
  'banner_image_url': instance.bannerImageUrl,
  'landing_url': instance.landingUrl,
  'badge_text': instance.badgeText,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'is_active': instance.isActive,
  'priority': instance.priority,
};
