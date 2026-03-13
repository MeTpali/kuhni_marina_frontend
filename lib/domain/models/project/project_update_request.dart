import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_update_request.freezed.dart';

@freezed
class ProjectUpdateRequest with _$ProjectUpdateRequest {
  const factory ProjectUpdateRequest({
    String? name,
    String? description,
    String? location,
  }) = _ProjectUpdateRequest;
}
