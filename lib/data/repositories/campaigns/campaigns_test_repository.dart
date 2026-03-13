import '../../../core/entities/result/result.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../../../domain/models/campaign/campaign_catalog.dart';
import '../../../domain/models/campaign/campaign_create_request.dart';
import '../../../domain/models/campaign/campaign_update_request.dart';
import '../../../domain/repositories/i_campaigns_repository.dart';
import '../../mappers/campaigns/campaign_catalog_mapper.dart';
import '../../mappers/campaigns/campaign_mapper.dart';
import '../../mappers/campaigns/campaign_request_mappers.dart';
import '../../services/campaigns/campaigns_test_service.dart';
import '../../utils/response_error_mapper.dart';

/// Тестовый репозиторий акций на основе [CampaignsTestService].
class CampaignsTestRepository implements ICampaignsRepository {
  CampaignsTestRepository({required CampaignsTestService service})
      : _service = service;

  final CampaignsTestService _service;
  final CampaignMapper _mapper = CampaignMapper();
  final CampaignCatalogMapper _catalogMapper = CampaignCatalogMapper();

  @override
  Future<Result<CampaignCatalog>> getCampaigns(
    String token, {
    int? page,
    int? pageSize,
    bool? includeInactive,
  }) async {
    final response = await _service.getCampaigns(
      token: token,
      page: page,
      pageSize: pageSize,
      includeInactive: includeInactive,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Campaign>> createCampaign(
    String token,
    CampaignCreateRequest request,
  ) async {
    final dto = CampaignRequestMappers.toCreateDto(request);
    final response = await _service.createCampaign(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Campaign>> getCampaignById(String token, int campaignId) async {
    final response =
        await _service.getCampaignById(token: token, campaignId: campaignId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Campaign>> updateCampaign(
    String token,
    int campaignId,
    CampaignUpdateRequest request,
  ) async {
    final dto = CampaignRequestMappers.toUpdateDto(request);
    final response = await _service.updateCampaign(
      token: token,
      campaignId: campaignId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteCampaign(String token, int campaignId) async {
    final response =
        await _service.deleteCampaign(token: token, campaignId: campaignId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
