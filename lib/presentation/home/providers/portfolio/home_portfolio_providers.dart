import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/project/project_catalog.dart';
import '../../../../domain/repositories/i_projects_repository.dart';

/// Портфолио — реализованные проекты.
final homePortfolioProvider = FutureProvider<ProjectCatalog>((ref) async {
  final repo = getIt<IProjectsRepository>();
  final result = await repo.getProjects(pageSize: 10);
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});
