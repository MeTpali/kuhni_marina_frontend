import 'package:frontend/data/dto/banner/banner_response/banner_response_dto.dart';
import 'package:frontend/domain/models/banner/banner.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class BannerMapper implements IMapper<BannerResponseDto, Banner> {
  @override
  Banner map(BannerResponseDto from) {
    return Banner(
      id: from.id,
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive ?? true,
    );
  }
}
