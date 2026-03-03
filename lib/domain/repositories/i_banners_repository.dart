import '../../core/entities/result/result.dart';
import '../models/banner/banner.dart';
import '../models/banner/banner_create_request.dart';
import '../models/banner/banner_update_request.dart';

/// Репозиторий баннеров.
abstract class IBannersRepository {
  Future<Result<List<Banner>>> getBanners(String token);

  Future<Result<Banner>> createBanner(
    String token,
    BannerCreateRequest request,
  );

  Future<Result<Banner>> getBannerById(String token, int bannerId);

  Future<Result<Banner>> updateBanner(
    String token,
    int bannerId,
    BannerUpdateRequest request,
  );

  Future<Result<bool>> deleteBanner(String token, int bannerId);
}
