import 'package:frontend/data/dto/banner/banner_create_request/banner_create_request_dto.dart';
import 'package:frontend/data/dto/banner/banner_update_request/banner_update_request_dto.dart';
import 'package:frontend/domain/models/banner/banner_create_request.dart';
import 'package:frontend/domain/models/banner/banner_update_request.dart';

class BannerRequestMappers {
  static BannerCreateRequestDto toCreateDto(BannerCreateRequest from) {
    return BannerCreateRequestDto(
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive,
    );
  }

  static BannerUpdateRequestDto toUpdateDto(BannerUpdateRequest from) {
    return BannerUpdateRequestDto(
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive,
    );
  }
}
