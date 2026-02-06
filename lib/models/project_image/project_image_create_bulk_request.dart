import 'package:freezed_annotation/freezed_annotation.dart';
import 'project_image_create_request.dart';

part 'project_image_create_bulk_request.freezed.dart';
part 'project_image_create_bulk_request.g.dart';

@freezed
class ProjectImageCreateBulkRequest with _$ProjectImageCreateBulkRequest {
  const factory ProjectImageCreateBulkRequest({
    @JsonKey(name: 'images') required List<ProjectImageCreateRequest> images,
  }) = _ProjectImageCreateBulkRequest;

  factory ProjectImageCreateBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageCreateBulkRequestFromJson(json);
}
