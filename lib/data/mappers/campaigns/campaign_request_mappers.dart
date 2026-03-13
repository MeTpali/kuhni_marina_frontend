import '../../../domain/models/campaign/campaign_create_request.dart';
import '../../../domain/models/campaign/campaign_update_request.dart';
import '../../dto/campaign/campaign_create_request/campaign_create_request_dto.dart';
import '../../dto/campaign/campaign_update_request/campaign_update_request_dto.dart';

class CampaignRequestMappers {
  static CampaignCreateRequestDto toCreateDto(CampaignCreateRequest from) =>
      CampaignCreateRequestDto(
        name: from.name,
        slug: from.slug,
        description: from.description,
        bannerImageUrl: from.bannerImageUrl,
        landingUrl: from.landingUrl,
        badgeText: from.badgeText,
        startDate: from.startDate,
        endDate: from.endDate,
        isActive: from.isActive,
        priority: from.priority,
      );

  static CampaignUpdateRequestDto toUpdateDto(CampaignUpdateRequest from) =>
      CampaignUpdateRequestDto(
        name: from.name,
        slug: from.slug,
        description: from.description,
        bannerImageUrl: from.bannerImageUrl,
        landingUrl: from.landingUrl,
        badgeText: from.badgeText,
        startDate: from.startDate,
        endDate: from.endDate,
        isActive: from.isActive,
        priority: from.priority,
      );
}
