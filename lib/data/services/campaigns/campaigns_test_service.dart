import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/campaign/campaign_create_request/campaign_create_request_dto.dart';
import '../../dto/campaign/campaign_delete_response/campaign_delete_response_dto.dart';
import '../../dto/campaign/campaign_list_response/campaign_list_response_dto.dart';
import '../../dto/campaign/campaign_response/campaign_response_dto.dart';
import '../../dto/campaign/campaign_update_request/campaign_update_request_dto.dart';

/// Тестовый сервис акций с моковыми данными.
class CampaignsTestService {
  CampaignsTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    CampaignResponseDto(
      id: 1,
      name: 'Весенняя распродажа',
      slug: 'spring-sale',
      description: 'Скидки на кухни до 30%',
      bannerImageUrl: 'https://example.com/banner1.jpg',
      landingUrl: 'https://example.com/promo/spring',
      badgeText: '−30%',
      startDate: '2024-03-01T00:00:00Z',
      endDate: '2024-03-31T23:59:59Z',
      isActive: true,
      priority: 1,
      createdAt: '2024-02-15T10:00:00Z',
      updatedAt: null,
      message: null,
    ),
    CampaignResponseDto(
      id: 2,
      name: 'Новинки апреля',
      slug: 'april-new',
      description: null,
      bannerImageUrl: null,
      landingUrl: null,
      badgeText: 'NEW',
      startDate: '2024-04-01T00:00:00Z',
      endDate: '2024-04-30T23:59:59Z',
      isActive: true,
      priority: 0,
      createdAt: '2024-03-20T12:00:00Z',
      updatedAt: null,
      message: null,
    ),
  ];

  static const _mockListResponse = CampaignListResponseDto(
    items: _mockItems,
    total: 2,
    page: 1,
    pageSize: 20,
    totalPages: 1,
    message: null,
  );

  Future<ResponseResult<CampaignListResponseDto>> getCampaigns({
    int? page,
    int? pageSize,
    bool? includeInactive,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<CampaignResponseDto>> createCampaign({
    required CampaignCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(
      CampaignResponseDto(
        id: 99,
        name: request.name,
        slug: request.slug,
        description: request.description,
        bannerImageUrl: request.bannerImageUrl,
        landingUrl: request.landingUrl,
        badgeText: request.badgeText,
        startDate: request.startDate,
        endDate: request.endDate,
        isActive: request.isActive,
        priority: request.priority,
        createdAt: DateTime.now().toIso8601String(),
        updatedAt: null,
        message: null,
      ),
    );
  }

  Future<ResponseResult<CampaignResponseDto>> getCampaignById({
    required int campaignId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final list = _mockItems.where((e) => e.id == campaignId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
          CampaignResponseDto(
            id: campaignId,
            name: 'Акция $campaignId',
            slug: null,
            description: null,
            bannerImageUrl: null,
            landingUrl: null,
            badgeText: null,
            startDate: '2024-01-01T00:00:00Z',
            endDate: '2024-12-31T23:59:59Z',
            isActive: true,
            priority: 0,
            createdAt: '2024-01-01T10:00:00Z',
            updatedAt: null,
            message: null,
          ),
    );
  }

  Future<ResponseResult<CampaignResponseDto>> updateCampaign({
    required int campaignId,
    required CampaignUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    final list = _mockItems.where((e) => e.id == campaignId).toList();
    final existing = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      CampaignResponseDto(
        id: campaignId,
        name: request.name ?? existing?.name ?? 'Акция $campaignId',
        slug: request.slug ?? existing?.slug,
        description: request.description ?? existing?.description,
        bannerImageUrl: request.bannerImageUrl ?? existing?.bannerImageUrl,
        landingUrl: request.landingUrl ?? existing?.landingUrl,
        badgeText: request.badgeText ?? existing?.badgeText,
        startDate:
            request.startDate ?? existing?.startDate ?? '2024-01-01T00:00:00Z',
        endDate: request.endDate ?? existing?.endDate ?? '2024-12-31T23:59:59Z',
        isActive: request.isActive ?? existing?.isActive ?? true,
        priority: request.priority ?? existing?.priority ?? 0,
        createdAt: existing?.createdAt ?? '2024-01-01T10:00:00Z',
        updatedAt: DateTime.now().toIso8601String(),
        message: null,
      ),
    );
  }

  Future<ResponseResult<CampaignDeleteResponseDto>> deleteCampaign({
    required int campaignId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      CampaignDeleteResponseDto(campaignId: campaignId, message: null),
    );
  }
}
