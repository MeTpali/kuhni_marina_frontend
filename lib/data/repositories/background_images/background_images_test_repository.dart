import '../../../core/entities/result/result.dart';
import '../../../domain/models/background_image/background_image.dart';
import '../../../domain/models/background_image/background_image_create_request.dart';
import '../../../domain/models/background_image/background_image_update_request.dart';
import '../../../domain/repositories/i_background_images_repository.dart';
import '../../mappers/background_images/background_image_mapper.dart';
import '../../mappers/background_images/background_image_request_mappers.dart';
import '../../services/background_images/background_images_test_service.dart';
import '../../utils/response_error_mapper.dart';

class BackgroundImagesTestRepository implements IBackgroundImagesRepository {
  BackgroundImagesTestRepository({required BackgroundImagesTestService service})
    : _service = service;

  final BackgroundImagesTestService _service;
  final BackgroundImageMapper _mapper = BackgroundImageMapper();

  @override
  Future<Result<List<BackgroundImage>>> getBackgroundImages() async {
    final response = await _service.getBackgroundImages();
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<BackgroundImage>> createBackgroundImage(
    BackgroundImageCreateRequest request,
  ) async {
    final dto = BackgroundImageRequestMappers.toCreateDto(request);
    final response = await _service.createBackgroundImage(request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<BackgroundImage>> getBackgroundImageById(
    int backgroundImageId,
  ) async {
    final response = await _service.getBackgroundImageById(
      backgroundImageId: backgroundImageId,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<BackgroundImage>> updateBackgroundImage(
    int backgroundImageId,
    BackgroundImageUpdateRequest request,
  ) async {
    final dto = BackgroundImageRequestMappers.toUpdateDto(request);
    final response = await _service.updateBackgroundImage(
      backgroundImageId: backgroundImageId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteBackgroundImage(int backgroundImageId) async {
    final response = await _service.deleteBackgroundImage(
      backgroundImageId: backgroundImageId,
    );
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
