// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignCreateRequestDtoImpl _$$CampaignCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CampaignCreateRequestDtoImpl(
  name: json['name'] as String,
  startDate: json['start_date'] as String,
  endDate: json['end_date'] as String,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  bannerImageUrl: json['banner_image_url'] as String?,
  landingUrl: json['landing_url'] as String?,
  badgeText: json['badge_text'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  priority: (json['priority'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$CampaignCreateRequestDtoImplToJson(
  _$CampaignCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'slug': instance.slug,
  'description': instance.description,
  'banner_image_url': instance.bannerImageUrl,
  'landing_url': instance.landingUrl,
  'badge_text': instance.badgeText,
  'is_active': instance.isActive,
  'priority': instance.priority,
};
