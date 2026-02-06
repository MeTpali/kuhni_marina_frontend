import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_response.freezed.dart';
part 'project_response.g.dart';

@freezed
class ProjectResponse with _$ProjectResponse {
  const factory ProjectResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectResponse;

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);
}
