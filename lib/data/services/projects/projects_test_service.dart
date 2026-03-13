import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/project/project_create_request/project_create_request_dto.dart';
import '../../dto/project/project_delete_response/project_delete_response_dto.dart';
import '../../dto/project/project_detail_response/project_detail_response_dto.dart';
import '../../dto/project/project_list_response/project_list_response_dto.dart';
import '../../dto/project/project_response/project_response_dto.dart';
import '../../dto/project/project_update_request/project_update_request_dto.dart';

/// Тестовый сервис проектов с моковыми данными.
class ProjectsTestService {
  ProjectsTestService({this.addDelay = true});

  final bool addDelay;

  static final _mockListItems = [
    ProjectResponseDto(
      id: 1,
      name: 'Кухня в скандинавском стиле',
      createdAt: DateTime(2024, 1, 15, 10, 0),
      description: 'Светлая кухня с островом',
      location: 'Москва',
      message: null,
    ),
    ProjectResponseDto(
      id: 2,
      name: 'Угловая кухня',
      createdAt: DateTime(2024, 2, 1, 12, 0),
      description: null,
      location: null,
      message: null,
    ),
  ];

  static final _mockListResponse = ProjectListResponseDto(
    items: _mockListItems,
    total: 2,
    page: 1,
    pageSize: 20,
    totalPages: 1,
    message: null,
  );

  Future<ResponseResult<ProjectListResponseDto>> getProjects({
    required String token,
    int? page,
    int? pageSize,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<ProjectListResponseDto>> getProjectsByProductId({
    required String token,
    required int productId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(
      ProjectListResponseDto(
        items: _mockListItems,
        total: 2,
        page: 1,
        pageSize: 20,
        totalPages: 1,
        message: null,
      ),
    );
  }

  Future<ResponseResult<ProjectDetailResponseDto>> getProjectById({
    required String token,
    required int projectId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    final list = _mockListItems.where((e) => e.id == projectId).toList();
    final item = list.isEmpty ? null : list.first;
    return ResponseResult.success(
      item != null
          ? ProjectDetailResponseDto(
              id: item.id,
              name: item.name,
              createdAt: item.createdAt,
              description: item.description,
              location: item.location,
              images: [],
              productIds: const [1, 2],
              message: null,
            )
          : ProjectDetailResponseDto(
              id: projectId,
              name: 'Проект $projectId',
              createdAt: DateTime.now(),
              description: null,
              location: null,
              images: [],
              productIds: const [],
              message: null,
            ),
    );
  }

  Future<ResponseResult<ProjectResponseDto>> createProject({
    required String token,
    required ProjectCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(ProjectResponseDto(
      id: 99,
      name: request.name,
      createdAt: DateTime.now(),
      description: request.description,
      location: request.location,
      message: null,
    ));
  }

  Future<ResponseResult<ProjectResponseDto>> updateProject({
    required String token,
    required int projectId,
    required ProjectUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(ProjectResponseDto(
      id: projectId,
      name: request.name ?? 'Проект $projectId',
      createdAt: DateTime.now(),
      description: request.description,
      location: request.location,
      message: null,
    ));
  }

  Future<ResponseResult<ProjectDeleteResponseDto>> deleteProject({
    required String token,
    required int projectId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      ProjectDeleteResponseDto(projectId: projectId, message: null),
    );
  }
}
