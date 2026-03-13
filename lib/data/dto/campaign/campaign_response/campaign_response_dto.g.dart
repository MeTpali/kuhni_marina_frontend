// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignResponseDtoImpl _$$CampaignResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CampaignResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  startDate: json['start_date'] as String,
  endDate: json['end_date'] as String,
  createdAt: json['created_at'] as String,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  bannerImageUrl: json['banner_image_url'] as String?,
  landingUrl: json['landing_url'] as String?,
  badgeText: json['badge_text'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  updatedAt: json['updated_at'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CampaignResponseDtoImplToJson(
  _$CampaignResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'created_at': instance.createdAt,
  'slug': instance.slug,
  'description': instance.description,
  'banner_image_url': instance.bannerImageUrl,
  'landing_url': instance.landingUrl,
  'badge_text': instance.badgeText,
  'is_active': instance.isActive,
  'priority': instance.priority,
  'updated_at': instance.updatedAt,
  'message': instance.message,
};
