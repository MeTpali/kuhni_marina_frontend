import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_create_request_dto.freezed.dart';
part 'project_create_request_dto.g.dart';

@freezed
class ProjectCreateRequestDto with _$ProjectCreateRequestDto {
  const factory ProjectCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  }) = _ProjectCreateRequestDto;

  factory ProjectCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectCreateRequestDtoFromJson(json);
}
