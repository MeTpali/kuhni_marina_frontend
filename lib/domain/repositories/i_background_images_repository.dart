import '../../core/entities/result/result.dart';
import '../models/background_image/background_image.dart';
import '../models/background_image/background_image_create_request.dart';
import '../models/background_image/background_image_update_request.dart';

abstract class IBackgroundImagesRepository {
  Future<Result<List<BackgroundImage>>> getBackgroundImages();

  Future<Result<BackgroundImage>> createBackgroundImage(
    BackgroundImageCreateRequest request,
  );

  Future<Result<BackgroundImage>> getBackgroundImageById(int backgroundImageId);

  Future<Result<BackgroundImage>> updateBackgroundImage(
    int backgroundImageId,
    BackgroundImageUpdateRequest request,
  );

  Future<Result<bool>> deleteBackgroundImage(int backgroundImageId);
}
