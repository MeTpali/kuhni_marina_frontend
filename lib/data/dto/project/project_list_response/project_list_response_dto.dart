import 'package:freezed_annotation/freezed_annotation.dart';
import '../project_response/project_response_dto.dart';

part 'project_list_response_dto.freezed.dart';
part 'project_list_response_dto.g.dart';

@freezed
class ProjectListResponseDto with _$ProjectListResponseDto {
  const factory ProjectListResponseDto({
    @JsonKey(name: 'items') required List<ProjectResponseDto> items,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectListResponseDto;

  factory ProjectListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectListResponseDtoFromJson(json);
}
