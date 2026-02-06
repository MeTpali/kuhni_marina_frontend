import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_create_request.freezed.dart';
part 'project_create_request.g.dart';

@freezed
class ProjectCreateRequest with _$ProjectCreateRequest {
  const factory ProjectCreateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  }) = _ProjectCreateRequest;

  factory ProjectCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectCreateRequestFromJson(json);
}
