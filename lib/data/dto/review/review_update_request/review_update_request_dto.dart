import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_update_request_dto.freezed.dart';
part 'review_update_request_dto.g.dart';

@freezed
class ReviewUpdateRequestDto with _$ReviewUpdateRequestDto {
  const factory ReviewUpdateRequestDto({
    @JsonKey(name: 'author_name') String? authorName,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
  }) = _ReviewUpdateRequestDto;

  factory ReviewUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewUpdateRequestDtoFromJson(json);
}
