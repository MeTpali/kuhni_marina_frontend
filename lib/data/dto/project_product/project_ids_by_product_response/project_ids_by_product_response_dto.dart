import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_ids_by_product_response_dto.freezed.dart';
part 'project_ids_by_product_response_dto.g.dart';

@freezed
class ProjectIdsByProductResponseDto with _$ProjectIdsByProductResponseDto {
  const factory ProjectIdsByProductResponseDto({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'project_ids') required List<int> projectIds,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectIdsByProductResponseDto;

  factory ProjectIdsByProductResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectIdsByProductResponseDtoFromJson(json);
}
