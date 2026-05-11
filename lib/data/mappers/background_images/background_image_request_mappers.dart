import '../../../domain/models/background_image/background_image_create_request.dart';
import '../../../domain/models/background_image/background_image_update_request.dart';
import '../../dto/background_image/background_image_create_request/background_image_create_request_dto.dart';
import '../../dto/background_image/background_image_update_request/background_image_update_request_dto.dart';

class BackgroundImageRequestMappers {
  static BackgroundImageCreateRequestDto toCreateDto(
    BackgroundImageCreateRequest from,
  ) => BackgroundImageCreateRequestDto(
    url: from.url,
    isActive: from.isActive,
  );

  static BackgroundImageUpdateRequestDto toUpdateDto(
    BackgroundImageUpdateRequest from,
  ) => BackgroundImageUpdateRequestDto(
    url: from.url,
    isActive: from.isActive,
  );
}
