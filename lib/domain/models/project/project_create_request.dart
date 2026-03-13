import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_create_request.freezed.dart';

@freezed
class ProjectCreateRequest with _$ProjectCreateRequest {
  const factory ProjectCreateRequest({
    required String name,
    String? description,
    String? location,
  }) = _ProjectCreateRequest;
}
