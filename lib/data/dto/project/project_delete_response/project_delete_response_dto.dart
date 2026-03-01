import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_delete_response_dto.freezed.dart';
part 'project_delete_response_dto.g.dart';

@freezed
class ProjectDeleteResponseDto with _$ProjectDeleteResponseDto {
  const factory ProjectDeleteResponseDto({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectDeleteResponseDto;

  factory ProjectDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDeleteResponseDtoFromJson(json);
}
