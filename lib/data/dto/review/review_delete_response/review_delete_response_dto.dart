import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_delete_response_dto.freezed.dart';
part 'review_delete_response_dto.g.dart';

@freezed
class ReviewDeleteResponseDto with _$ReviewDeleteResponseDto {
  const factory ReviewDeleteResponseDto({
    @JsonKey(name: 'review_id') required int reviewId,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewDeleteResponseDto;

  factory ReviewDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDeleteResponseDtoFromJson(json);
}
