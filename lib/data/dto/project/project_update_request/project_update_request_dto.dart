import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_update_request_dto.freezed.dart';
part 'project_update_request_dto.g.dart';

@freezed
class ProjectUpdateRequestDto with _$ProjectUpdateRequestDto {
  const factory ProjectUpdateRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  }) = _ProjectUpdateRequestDto;

  factory ProjectUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectUpdateRequestDtoFromJson(json);
}
