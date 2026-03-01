import 'package:freezed_annotation/freezed_annotation.dart';
import '../review_response/review_response_dto.dart';

part 'review_list_response_dto.freezed.dart';
part 'review_list_response_dto.g.dart';

@freezed
class ReviewListResponseDto with _$ReviewListResponseDto {
  const factory ReviewListResponseDto({
    @JsonKey(name: 'items') required List<ReviewResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewListResponseDto;

  factory ReviewListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewListResponseDtoFromJson(json);
}
