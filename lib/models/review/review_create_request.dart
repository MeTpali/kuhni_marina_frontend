import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_create_request.freezed.dart';
part 'review_create_request.g.dart';

@freezed
class ReviewCreateRequest with _$ReviewCreateRequest {
  const factory ReviewCreateRequest({
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @Default(false) @JsonKey(name: 'is_approved') bool? isApproved,
  }) = _ReviewCreateRequest;

  factory ReviewCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreateRequestFromJson(json);
}
