import '../../../core/entities/result/result.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/banner/banner_create_request.dart';
import '../../../domain/models/banner/banner_update_request.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../mappers/banners/banner_mapper.dart';
import '../../mappers/banners/banner_request_mappers.dart';
import '../../services/banners/banners_test_service.dart';
import '../../utils/response_error_mapper.dart';

/// Тестовый репозиторий баннеров на основе [BannersTestService].
class BannersTestRepository implements IBannersRepository {
  BannersTestRepository({required BannersTestService service})
      : _service = service;

  final BannersTestService _service;
  final BannerMapper _mapper = BannerMapper();

  @override
  Future<Result<List<Banner>>> getBanners() async {
    final response = await _service.getBanners();
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> createBanner(BannerCreateRequest request) async {
    final dto = BannerRequestMappers.toCreateDto(request);
    final response = await _service.createBanner(request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> getBannerById(int bannerId) async {
    final response = await _service.getBannerById(bannerId: bannerId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> updateBanner(
    int bannerId,
    BannerUpdateRequest request,
  ) async {
    final dto = BannerRequestMappers.toUpdateDto(request);
    final response = await _service.updateBanner(
      bannerId: bannerId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteBanner(int bannerId) async {
    final response = await _service.deleteBanner(bannerId: bannerId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
