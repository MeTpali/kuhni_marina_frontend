import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/banner/banner_create_request/banner_create_request_dto.dart';
import '../../dto/banner/banner_delete_response/banner_delete_response_dto.dart';
import '../../dto/banner/banner_list_response/banner_list_response_dto.dart';
import '../../dto/banner/banner_response/banner_response_dto.dart';
import '../../dto/banner/banner_update_request/banner_update_request_dto.dart';

/// Тестовый сервис баннеров с моковыми данными.
class BannersTestService {
  BannersTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    BannerResponseDto(
      id: 1,
      title: 'Акция на кухни',
      imageUrl: 'https://example.com/banner1.jpg',
      linkUrl: '/catalog?type=kitchen',
      position: 0,
      isActive: true,
      message: null,
    ),
    BannerResponseDto(
      id: 2,
      title: 'Новая коллекция',
      imageUrl: 'https://example.com/banner2.jpg',
      linkUrl: null,
      position: 1,
      isActive: true,
      message: null,
    ),
  ];

  static const _mockListResponse =
      BannerListResponseDto(items: _mockItems, message: null);

  Future<ResponseResult<BannerListResponseDto>> getBanners({
    required String token,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<BannerResponseDto>> createBanner({
    required String token,
    required BannerCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(BannerResponseDto(
      id: 99,
      title: request.title,
      imageUrl: request.imageUrl,
      linkUrl: request.linkUrl,
      position: request.position,
      isActive: request.isActive ?? true,
      message: null,
    ));
  }

  Future<ResponseResult<BannerResponseDto>> getBannerById({
    required String token,
    required int bannerId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final list = _mockItems.where((e) => e.id == bannerId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
        BannerResponseDto(
          id: bannerId,
          title: 'Баннер $bannerId',
          imageUrl: 'https://example.com/banner.jpg',
          linkUrl: null,
          position: 0,
          isActive: true,
          message: null,
        ),
    );
  }

  Future<ResponseResult<BannerResponseDto>> updateBanner({
    required String token,
    required int bannerId,
    required BannerUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(BannerResponseDto(
      id: bannerId,
      title: request.title,
      imageUrl: request.imageUrl,
      linkUrl: request.linkUrl,
      position: request.position,
      isActive: request.isActive ?? true,
      message: null,
    ));
  }

  Future<ResponseResult<BannerDeleteResponseDto>> deleteBanner({
    required String token,
    required int bannerId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      BannerDeleteResponseDto(bannerId: bannerId, message: null),
    );
  }
}
