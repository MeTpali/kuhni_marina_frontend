import 'package:freezed_annotation/freezed_annotation.dart';

import 'project.dart';

part 'project_catalog.freezed.dart';

@freezed
class ProjectCatalog with _$ProjectCatalog {
  const factory ProjectCatalog({
    required List<Project> items,
    int? total,
    int? page,
    int? pageSize,
    int? totalPages,
  }) = _ProjectCatalog;
}
