import 'package:freezed_annotation/freezed_annotation.dart';
import 'review_response.dart';

part 'review_list_response.freezed.dart';
part 'review_list_response.g.dart';

@freezed
class ReviewListResponse with _$ReviewListResponse {
  const factory ReviewListResponse({
    @JsonKey(name: 'items') required List<ReviewResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ReviewListResponse;

  factory ReviewListResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewListResponseFromJson(json);
}
