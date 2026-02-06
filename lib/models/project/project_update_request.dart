import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_update_request.freezed.dart';
part 'project_update_request.g.dart';

@freezed
class ProjectUpdateRequest with _$ProjectUpdateRequest {
  const factory ProjectUpdateRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  }) = _ProjectUpdateRequest;

  factory ProjectUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectUpdateRequestFromJson(json);
}
