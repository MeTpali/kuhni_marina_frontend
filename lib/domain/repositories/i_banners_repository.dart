import '../../core/entities/result/result.dart';
import '../models/banner/banner.dart';
import '../models/banner/banner_create_request.dart';
import '../models/banner/banner_update_request.dart';

/// Репозиторий баннеров.
abstract class IBannersRepository {
  Future<Result<List<Banner>>> getBanners();

  Future<Result<Banner>> createBanner(BannerCreateRequest request);

  Future<Result<Banner>> getBannerById(int bannerId);

  Future<Result<Banner>> updateBanner(
    int bannerId,
    BannerUpdateRequest request,
  );

  Future<Result<bool>> deleteBanner(int bannerId);
}
