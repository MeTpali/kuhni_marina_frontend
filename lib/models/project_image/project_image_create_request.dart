import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_create_request.freezed.dart';
part 'project_image_create_request.g.dart';

@freezed
class ProjectImageCreateRequest with _$ProjectImageCreateRequest {
  const factory ProjectImageCreateRequest({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
  }) = _ProjectImageCreateRequest;

  factory ProjectImageCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageCreateRequestFromJson(json);
}
