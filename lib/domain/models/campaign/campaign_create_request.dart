import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_create_request.freezed.dart';

@freezed
class CampaignCreateRequest with _$CampaignCreateRequest {
  const factory CampaignCreateRequest({
    required String name,
    required String startDate,
    required String endDate,
    String? slug,
    String? description,
    String? bannerImageUrl,
    String? landingUrl,
    String? badgeText,
    @Default(true) bool isActive,
    @Default(0) int priority,
  }) = _CampaignCreateRequest;
}
