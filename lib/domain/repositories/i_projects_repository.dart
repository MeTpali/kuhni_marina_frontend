import '../../core/entities/result/result.dart';
import '../models/project/project.dart';
import '../models/project/project_catalog.dart';
import '../models/project/project_create_request.dart';
import '../models/project/project_update_request.dart';

abstract class IProjectsRepository {
  Future<Result<ProjectCatalog>> getProjects({
    int? page,
    int? pageSize,
  });

  Future<Result<ProjectCatalog>> getProjectsByProductId(int productId);

  Future<Result<Project>> getProjectById(int projectId);

  Future<Result<Project>> createProject(ProjectCreateRequest request);

  Future<Result<Project>> updateProject(
    int projectId,
    ProjectUpdateRequest request,
  );

  Future<Result<bool>> deleteProject(int projectId);
}
