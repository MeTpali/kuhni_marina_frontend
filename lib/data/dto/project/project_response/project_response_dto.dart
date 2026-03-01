import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_response_dto.freezed.dart';
part 'project_response_dto.g.dart';

@freezed
class ProjectResponseDto with _$ProjectResponseDto {
  const factory ProjectResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectResponseDto;

  factory ProjectResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseDtoFromJson(json);
}
