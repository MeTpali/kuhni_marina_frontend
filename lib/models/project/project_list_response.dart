import 'package:freezed_annotation/freezed_annotation.dart';
import 'project_response.dart';

part 'project_list_response.freezed.dart';
part 'project_list_response.g.dart';

@freezed
class ProjectListResponse with _$ProjectListResponse {
  const factory ProjectListResponse({
    @JsonKey(name: 'items') required List<ProjectResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectListResponse;

  factory ProjectListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectListResponseFromJson(json);
}
