import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_response_dto.freezed.dart';
part 'project_product_response_dto.g.dart';

@freezed
class ProjectProductResponseDto with _$ProjectProductResponseDto {
  const factory ProjectProductResponseDto({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductResponseDto;

  factory ProjectProductResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductResponseDtoFromJson(json);
}
