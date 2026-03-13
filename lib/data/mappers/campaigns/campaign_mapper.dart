import '../../../domain/models/campaign/campaign.dart';
import '../../dto/campaign/campaign_response/campaign_response_dto.dart';
import '../i_mapper.dart';

class CampaignMapper implements IMapper<CampaignResponseDto, Campaign> {
  @override
  Campaign map(CampaignResponseDto from) => Campaign(
        id: from.id,
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
        createdAt: from.createdAt,
        updatedAt: from.updatedAt,
      );
}
