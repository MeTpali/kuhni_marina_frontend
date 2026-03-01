import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response_dto.freezed.dart';
part 'review_response_dto.g.dart';

@freezed
class ReviewResponseDto with _$ReviewResponseDto {
  const factory ReviewResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'is_approved') required bool isApproved,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewResponseDto;

  factory ReviewResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseDtoFromJson(json);
}
