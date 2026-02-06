import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_delete_response.freezed.dart';
part 'review_delete_response.g.dart';

@freezed
class ReviewDeleteResponse with _$ReviewDeleteResponse {
  const factory ReviewDeleteResponse({
    @JsonKey(name: 'review_id') required int reviewId,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewDeleteResponse;

  factory ReviewDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewDeleteResponseFromJson(json);
}
