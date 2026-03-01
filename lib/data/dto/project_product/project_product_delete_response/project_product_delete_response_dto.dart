import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_delete_response_dto.freezed.dart';
part 'project_product_delete_response_dto.g.dart';

@freezed
class ProjectProductDeleteResponseDto with _$ProjectProductDeleteResponseDto {
  const factory ProjectProductDeleteResponseDto({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductDeleteResponseDto;

  factory ProjectProductDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductDeleteResponseDtoFromJson(json);
}
