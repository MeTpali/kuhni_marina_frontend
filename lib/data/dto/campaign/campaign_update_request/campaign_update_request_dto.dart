import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_update_request_dto.freezed.dart';
part 'campaign_update_request_dto.g.dart';

@freezed
class CampaignUpdateRequestDto with _$CampaignUpdateRequestDto {
  const factory CampaignUpdateRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'priority') int? priority,
  }) = _CampaignUpdateRequestDto;

  factory CampaignUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CampaignUpdateRequestDtoFromJson(json);
}
