import '../../../domain/models/project/project.dart';
import '../../dto/project/project_response/project_response_dto.dart';
import '../i_mapper.dart';

class ProjectMapper implements IMapper<ProjectResponseDto, Project> {
  @override
  Project map(ProjectResponseDto from) => Project(
        id: from.id,
        name: from.name,
        createdAt: from.createdAt.toIso8601String(),
        description: from.description,
        location: from.location,
      );
}
