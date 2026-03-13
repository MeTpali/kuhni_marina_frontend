import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_create_request.freezed.dart';

@freezed
class ReviewCreateRequest with _$ReviewCreateRequest {
  const factory ReviewCreateRequest({
    required String authorName,
    required int rating,
    required String text,
    int? productId,
    int? userId,
    @Default(false) bool? isApproved,
  }) = _ReviewCreateRequest;
}
