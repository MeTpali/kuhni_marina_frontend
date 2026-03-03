import '../../../core/entities/result/result.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/banner/banner_create_request.dart';
import '../../../domain/models/banner/banner_update_request.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../mappers/banners/banner_mapper.dart';
import '../../mappers/banners/banner_request_mappers.dart';
import '../../services/banners/banners_remote_service.dart';
import '../../utils/response_error_mapper.dart';

class BannersRemoteRepository implements IBannersRepository {
  BannersRemoteRepository({required BannersRemoteService service})
      : _service = service;

  final BannersRemoteService _service;
  final BannerMapper _mapper = BannerMapper();

  @override
  Future<Result<List<Banner>>> getBanners(String token) async {
    final response = await _service.getBanners(token: token);
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> createBanner(
    String token,
    BannerCreateRequest request,
  ) async {
    final dto = BannerRequestMappers.toCreateDto(request);
    final response = await _service.createBanner(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> getBannerById(String token, int bannerId) async {
    final response =
        await _service.getBannerById(token: token, bannerId: bannerId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Banner>> updateBanner(
    String token,
    int bannerId,
    BannerUpdateRequest request,
  ) async {
    final dto = BannerRequestMappers.toUpdateDto(request);
    final response = await _service.updateBanner(
      token: token,
      bannerId: bannerId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteBanner(String token, int bannerId) async {
    final response =
        await _service.deleteBanner(token: token, bannerId: bannerId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
