import '../../../domain/models/banner/banner_create_request.dart';
import '../../../domain/models/banner/banner_update_request.dart';
import '../../dto/banner/banner_create_request/banner_create_request_dto.dart';
import '../../dto/banner/banner_update_request/banner_update_request_dto.dart';

class BannerRequestMappers {
  static BannerCreateRequestDto toCreateDto(BannerCreateRequest from) => BannerCreateRequestDto(
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive,
    );

  static BannerUpdateRequestDto toUpdateDto(BannerUpdateRequest from) => BannerUpdateRequestDto(
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive,
    );
}
