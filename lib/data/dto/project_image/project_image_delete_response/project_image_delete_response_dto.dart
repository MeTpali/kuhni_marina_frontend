import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_delete_response_dto.freezed.dart';
part 'project_image_delete_response_dto.g.dart';

@freezed
class ProjectImageDeleteResponseDto with _$ProjectImageDeleteResponseDto {
  const factory ProjectImageDeleteResponseDto({
    @JsonKey(name: 'project_image_id') required int projectImageId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageDeleteResponseDto;

  factory ProjectImageDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageDeleteResponseDtoFromJson(json);
}
