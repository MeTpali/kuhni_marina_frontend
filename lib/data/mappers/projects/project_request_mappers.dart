import '../../../domain/models/project/project_create_request.dart';
import '../../../domain/models/project/project_update_request.dart';
import '../../dto/project/project_create_request/project_create_request_dto.dart';
import '../../dto/project/project_update_request/project_update_request_dto.dart';

class ProjectRequestMappers {
  static ProjectCreateRequestDto toCreateDto(ProjectCreateRequest request) =>
      ProjectCreateRequestDto(
        name: request.name,
        description: request.description,
        location: request.location,
      );

  static ProjectUpdateRequestDto toUpdateDto(ProjectUpdateRequest request) =>
      ProjectUpdateRequestDto(
        name: request.name,
        description: request.description,
        location: request.location,
      );
}
