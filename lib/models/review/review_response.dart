import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response.freezed.dart';
part 'review_response.g.dart';

@freezed
class ReviewResponse with _$ReviewResponse {
  const factory ReviewResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_approved') required bool isApproved,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}
