import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_delete_response.freezed.dart';
part 'project_delete_response.g.dart';

@freezed
class ProjectDeleteResponse with _$ProjectDeleteResponse {
  const factory ProjectDeleteResponse({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectDeleteResponse;

  factory ProjectDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectDeleteResponseFromJson(json);
}
