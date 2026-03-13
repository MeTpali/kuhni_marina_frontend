import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required int id,
    required String authorName,
    required int rating,
    required String text,
    required bool isApproved,
    required String createdAt,
    int? productId,
    int? userId,
  }) = _Review;
}
