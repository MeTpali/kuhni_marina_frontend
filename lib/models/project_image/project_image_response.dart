import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_response.freezed.dart';
part 'project_image_response.g.dart';

@freezed
class ProjectImageResponse with _$ProjectImageResponse {
  const factory ProjectImageResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageResponse;

  factory ProjectImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageResponseFromJson(json);
}
