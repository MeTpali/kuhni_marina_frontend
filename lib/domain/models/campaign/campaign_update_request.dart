import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_update_request.freezed.dart';

@freezed
class CampaignUpdateRequest with _$CampaignUpdateRequest {
  const factory CampaignUpdateRequest({
    String? name,
    String? slug,
    String? description,
    String? bannerImageUrl,
    String? landingUrl,
    String? badgeText,
    String? startDate,
    String? endDate,
    bool? isActive,
    int? priority,
  }) = _CampaignUpdateRequest;
}
