import 'package:freezed_annotation/freezed_annotation.dart';

import 'project_image.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required int id,
    required String name,
    required String createdAt,
    String? description,
    String? location,
    @Default([]) List<ProjectImage> images,
    @Default([]) List<int> productIds,
  }) = _Project;
}
