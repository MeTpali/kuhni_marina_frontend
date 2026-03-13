import '../../../domain/models/project/project_catalog.dart';
import '../../dto/project/project_list_response/project_list_response_dto.dart';
import '../i_mapper.dart';
import 'project_mapper.dart';

class ProjectCatalogMapper
    implements IMapper<ProjectListResponseDto, ProjectCatalog> {
  final ProjectMapper _mapper = ProjectMapper();

  @override
  ProjectCatalog map(ProjectListResponseDto from) => ProjectCatalog(
        items: from.items.map(_mapper.map).toList(),
        total: from.total,
        page: from.page,
        pageSize: from.pageSize,
        totalPages: from.totalPages,
      );
}
