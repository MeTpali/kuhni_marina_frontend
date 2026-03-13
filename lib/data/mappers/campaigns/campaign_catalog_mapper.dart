import '../../../domain/models/campaign/campaign_catalog.dart';
import '../../dto/campaign/campaign_list_response/campaign_list_response_dto.dart';
import '../i_mapper.dart';
import 'campaign_mapper.dart';

class CampaignCatalogMapper
    implements IMapper<CampaignListResponseDto, CampaignCatalog> {
  final CampaignMapper _campaignMapper = CampaignMapper();

  @override
  CampaignCatalog map(CampaignListResponseDto from) => CampaignCatalog(
        items: from.items.map(_campaignMapper.map).toList(),
        total: from.total,
        page: from.page,
        pageSize: from.pageSize,
        totalPages: from.totalPages,
      );
}
