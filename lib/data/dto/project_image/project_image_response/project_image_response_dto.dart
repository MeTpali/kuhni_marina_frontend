import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_response_dto.freezed.dart';
part 'project_image_response_dto.g.dart';

@freezed
class ProjectImageResponseDto with _$ProjectImageResponseDto {
  const factory ProjectImageResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectImageResponseDto;

  factory ProjectImageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageResponseDtoFromJson(json);
}
