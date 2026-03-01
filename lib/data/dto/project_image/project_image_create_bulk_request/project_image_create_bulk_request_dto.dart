import 'package:freezed_annotation/freezed_annotation.dart';
import '../project_image_create_request/project_image_create_request_dto.dart';

part 'project_image_create_bulk_request_dto.freezed.dart';
part 'project_image_create_bulk_request_dto.g.dart';

@freezed
class ProjectImageCreateBulkRequestDto with _$ProjectImageCreateBulkRequestDto {
  const factory ProjectImageCreateBulkRequestDto({
    @JsonKey(name: 'images') required List<ProjectImageCreateRequestDto> images,
  }) = _ProjectImageCreateBulkRequestDto;

  factory ProjectImageCreateBulkRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectImageCreateBulkRequestDtoFromJson(json);
}
