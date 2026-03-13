import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_response_dto.freezed.dart';
part 'campaign_response_dto.g.dart';

@freezed
class CampaignResponseDto with _$CampaignResponseDto {
  const factory CampaignResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'priority') @Default(0) int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  }) = _CampaignResponseDto;

  factory CampaignResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CampaignResponseDtoFromJson(json);
}
