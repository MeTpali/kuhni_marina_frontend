import '../../../domain/models/project/project_image.dart';
import '../../dto/project_image/project_image_response/project_image_response_dto.dart';
import '../i_mapper.dart';

class ProjectImageMapper
    implements IMapper<ProjectImageResponseDto, ProjectImage> {
  @override
  ProjectImage map(ProjectImageResponseDto from) => ProjectImage(
    id: from.id,
    projectId: from.projectId,
    imageUrl: from.imageUrl,
    isMain: from.isMain ?? false,
  );
}
