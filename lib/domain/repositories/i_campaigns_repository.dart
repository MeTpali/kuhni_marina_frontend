import '../../core/entities/result/result.dart';
import '../models/campaign/campaign.dart';
import '../models/campaign/campaign_catalog.dart';
import '../models/campaign/campaign_create_request.dart';
import '../models/campaign/campaign_update_request.dart';

/// Репозиторий акций (маркетинговых кампаний).
abstract class ICampaignsRepository {
  /// Список акций с пагинацией.
  Future<Result<CampaignCatalog>> getCampaigns(
    String token, {
    int? page,
    int? pageSize,
    bool? includeInactive,
  });

  /// Создать акцию.
  Future<Result<Campaign>> createCampaign(
    String token,
    CampaignCreateRequest request,
  );

  /// Акция по id.
  Future<Result<Campaign>> getCampaignById(String token, int campaignId);

  /// Обновить акцию.
  Future<Result<Campaign>> updateCampaign(
    String token,
    int campaignId,
    CampaignUpdateRequest request,
  );

  /// Удалить акцию (деактивировать).
  Future<Result<bool>> deleteCampaign(String token, int campaignId);
}
