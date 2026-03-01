import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image_create_request_dto.freezed.dart';
part 'project_image_create_request_dto.g.dart';

@freezed
class ProjectImageCreateRequestDto with _$ProjectImageCreateRequestDto {
  const factory ProjectImageCreateRequestDto({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
  }) = _ProjectImageCreateRequestDto;

  factory ProjectImageCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageCreateRequestDtoFromJson(json);
}
