import 'package:freezed_annotation/freezed_annotation.dart';
import '../../project_image/project_image_response/project_image_response_dto.dart';

part 'project_detail_response_dto.freezed.dart';
part 'project_detail_response_dto.g.dart';

@freezed
class ProjectDetailResponseDto with _$ProjectDetailResponseDto {
  const factory ProjectDetailResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @Default([]) @JsonKey(name: 'images') List<ProjectImageResponseDto> images,
    @Default([]) @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectDetailResponseDto;

  factory ProjectDetailResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailResponseDtoFromJson(json);
}
