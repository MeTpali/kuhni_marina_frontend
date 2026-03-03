import '../../../domain/models/banner/banner.dart';
import '../../dto/banner/banner_response/banner_response_dto.dart';
import '../i_mapper.dart';

class BannerMapper implements IMapper<BannerResponseDto, Banner> {
  @override
  Banner map(BannerResponseDto from) => Banner(
      id: from.id,
      title: from.title,
      imageUrl: from.imageUrl,
      linkUrl: from.linkUrl,
      position: from.position,
      isActive: from.isActive ?? true,
    );
}
