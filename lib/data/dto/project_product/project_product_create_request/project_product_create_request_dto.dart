import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_create_request_dto.freezed.dart';
part 'project_product_create_request_dto.g.dart';

@freezed
class ProjectProductCreateRequestDto with _$ProjectProductCreateRequestDto {
  const factory ProjectProductCreateRequestDto({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
  }) = _ProjectProductCreateRequestDto;

  factory ProjectProductCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductCreateRequestDtoFromJson(json);
}
