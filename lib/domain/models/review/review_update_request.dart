import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_update_request.freezed.dart';

@freezed
class ReviewUpdateRequest with _$ReviewUpdateRequest {
  const factory ReviewUpdateRequest({
    String? authorName,
    int? rating,
    String? text,
    int? productId,
    int? userId,
  }) = _ReviewUpdateRequest;
}
