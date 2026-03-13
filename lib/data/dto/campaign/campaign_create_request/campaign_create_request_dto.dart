import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_create_request_dto.freezed.dart';
part 'campaign_create_request_dto.g.dart';

@freezed
class CampaignCreateRequestDto with _$CampaignCreateRequestDto {
  const factory CampaignCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'priority') @Default(0) int priority,
  }) = _CampaignCreateRequestDto;

  factory CampaignCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CampaignCreateRequestDtoFromJson(json);
}
