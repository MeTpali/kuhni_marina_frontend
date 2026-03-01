import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_delete_response_dto.freezed.dart';
part 'category_delete_response_dto.g.dart';

@freezed
class CategoryDeleteResponseDto with _$CategoryDeleteResponseDto {
  const factory CategoryDeleteResponseDto({
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryDeleteResponseDto;

  factory CategoryDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDeleteResponseDtoFromJson(json);
}
