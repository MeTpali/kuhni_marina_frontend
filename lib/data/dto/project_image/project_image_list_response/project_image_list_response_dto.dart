import 'package:freezed_annotation/freezed_annotation.dart';
import '../project_image_response/project_image_response_dto.dart';

part 'project_image_list_response_dto.freezed.dart';
part 'project_image_list_response_dto.g.dart';

@freezed
class ProjectImageListResponseDto with _$ProjectImageListResponseDto {
  const factory ProjectImageListResponseDto({
    @JsonKey(name: 'items') required List<ProjectImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageListResponseDto;

  factory ProjectImageListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageListResponseDtoFromJson(json);
}
