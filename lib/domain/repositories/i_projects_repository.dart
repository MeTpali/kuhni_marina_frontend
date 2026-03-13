import '../../core/entities/result/result.dart';
import '../models/project/project.dart';
import '../models/project/project_catalog.dart';
import '../models/project/project_create_request.dart';
import '../models/project/project_update_request.dart';

abstract class IProjectsRepository {
  Future<Result<ProjectCatalog>> getProjects(
    String token, {
    int? page,
    int? pageSize,
  });

  Future<Result<ProjectCatalog>> getProjectsByProductId(String token, int productId);

  Future<Result<Project>> getProjectById(String token, int projectId);

  Future<Result<Project>> createProject(String token, ProjectCreateRequest request);

  Future<Result<Project>> updateProject(
    String token,
    int projectId,
    ProjectUpdateRequest request,
  );

  Future<Result<bool>> deleteProject(String token, int projectId);
}
