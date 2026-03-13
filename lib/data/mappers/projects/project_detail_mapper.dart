import '../../../domain/models/project/project.dart';
import '../../dto/project/project_detail_response/project_detail_response_dto.dart';
import '../i_mapper.dart';
import 'project_image_mapper.dart';

class ProjectDetailMapper
    implements IMapper<ProjectDetailResponseDto, Project> {
  final ProjectImageMapper _imageMapper = ProjectImageMapper();

  @override
  Project map(ProjectDetailResponseDto from) => Project(
    id: from.id,
    name: from.name,
    createdAt: from.createdAt.toIso8601String(),
    description: from.description,
    location: from.location,
    images: from.images.map(_imageMapper.map).toList(),
    productIds: from.productIds,
  );
}
