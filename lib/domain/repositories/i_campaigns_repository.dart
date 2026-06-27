import '../../core/entities/result/result.dart';
import '../models/campaign/campaign.dart';
import '../models/campaign/campaign_catalog.dart';
import '../models/campaign/campaign_create_request.dart';
import '../models/campaign/campaign_update_request.dart';

/// Репозиторий акций (маркетинговых кампаний).
abstract class ICampaignsRepository {
  /// Список акций с пагинацией.
  Future<Result<CampaignCatalog>> getCampaigns({
    int? page,
    int? pageSize,
    bool? includeInactive,
  });

  /// Создать акцию.
  Future<Result<Campaign>> createCampaign(CampaignCreateRequest request);

  /// Акция по id.
  Future<Result<Campaign>> getCampaignById(int campaignId);

  /// Акция по slug.
  Future<Result<Campaign>> getCampaignBySlug(String campaignSlug);

  /// Акции, в которых участвует продукт.
  Future<Result<CampaignCatalog>> getCampaignsByProductId(int productId);

  /// Обновить акцию.
  Future<Result<Campaign>> updateCampaign(
    int campaignId,
    CampaignUpdateRequest request,
  );

  /// Удалить акцию (деактивировать).
  Future<Result<bool>> deleteCampaign(int campaignId);
}
