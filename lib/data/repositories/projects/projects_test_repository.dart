import '../../../core/entities/result/result.dart';
import '../../../domain/models/project/project.dart';
import '../../../domain/models/project/project_catalog.dart';
import '../../../domain/models/project/project_create_request.dart';
import '../../../domain/models/project/project_update_request.dart';
import '../../../domain/repositories/i_projects_repository.dart';
import '../../mappers/projects/project_catalog_mapper.dart';
import '../../mappers/projects/project_detail_mapper.dart';
import '../../mappers/projects/project_mapper.dart';
import '../../mappers/projects/project_request_mappers.dart';
import '../../services/projects/projects_test_service.dart';
import '../../utils/response_error_mapper.dart';

class ProjectsTestRepository implements IProjectsRepository {
  ProjectsTestRepository({required ProjectsTestService service})
      : _service = service;

  final ProjectsTestService _service;
  final ProjectMapper _projectMapper = ProjectMapper();
  final ProjectDetailMapper _projectDetailMapper = ProjectDetailMapper();
  final ProjectCatalogMapper _catalogMapper = ProjectCatalogMapper();

  @override
  Future<Result<ProjectCatalog>> getProjects({
    int? page,
    int? pageSize,
  }) async {
    final response = await _service.getProjects(
      page: page,
      pageSize: pageSize,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProjectCatalog>> getProjectsByProductId(int productId) async {
    final response = await _service.getProjectsByProductId(productId: productId);
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Project>> getProjectById(int projectId) async {
    final response = await _service.getProjectById(projectId: projectId);
    return response.when(
      success: (dto) => Result.success(_projectDetailMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Project>> createProject(ProjectCreateRequest request) async {
    final response = await _service.createProject(
      request: ProjectRequestMappers.toCreateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_projectMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Project>> updateProject(
    int projectId,
    ProjectUpdateRequest request,
  ) async {
    final response = await _service.updateProject(
      projectId: projectId,
      request: ProjectRequestMappers.toUpdateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_projectMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteProject(int projectId) async {
    final response = await _service.deleteProject(projectId: projectId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
