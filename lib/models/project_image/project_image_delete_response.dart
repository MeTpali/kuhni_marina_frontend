import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_delete_response.freezed.dart';
part 'project_image_delete_response.g.dart';

@freezed
class ProjectImageDeleteResponse with _$ProjectImageDeleteResponse {
  const factory ProjectImageDeleteResponse({
    @JsonKey(name: 'project_image_id') required int projectImageId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageDeleteResponse;

  factory ProjectImageDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageDeleteResponseFromJson(json);
}
