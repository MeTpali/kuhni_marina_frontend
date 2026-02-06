import 'package:freezed_annotation/freezed_annotation.dart';
import 'project_image_response.dart';

part 'project_image_list_response.freezed.dart';
part 'project_image_list_response.g.dart';

@freezed
class ProjectImageListResponse with _$ProjectImageListResponse {
  const factory ProjectImageListResponse({
    @JsonKey(name: 'items') required List<ProjectImageResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageListResponse;

  factory ProjectImageListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageListResponseFromJson(json);
}
