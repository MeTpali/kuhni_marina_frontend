import 'package:freezed_annotation/freezed_annotation.dart';
import '../project_product_response/project_product_response_dto.dart';

part 'project_product_list_response_dto.freezed.dart';
part 'project_product_list_response_dto.g.dart';

@freezed
class ProjectProductListResponseDto with _$ProjectProductListResponseDto {
  const factory ProjectProductListResponseDto({
    @JsonKey(name: 'items') required List<ProjectProductResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductListResponseDto;

  factory ProjectProductListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductListResponseDtoFromJson(json);
}
