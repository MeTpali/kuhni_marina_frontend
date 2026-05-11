import '../../../domain/models/background_image/background_image.dart';
import '../../dto/background_image/background_image_response/background_image_response_dto.dart';
import '../i_mapper.dart';

class BackgroundImageMapper
    implements IMapper<BackgroundImageResponseDto, BackgroundImage> {
  @override
  BackgroundImage map(BackgroundImageResponseDto from) => BackgroundImage(
    id: from.id,
    url: from.url,
    isActive: from.isActive,
  );
}
