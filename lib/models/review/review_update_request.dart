import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_update_request.freezed.dart';
part 'review_update_request.g.dart';

@freezed
class ReviewUpdateRequest with _$ReviewUpdateRequest {
  const factory ReviewUpdateRequest({
    @JsonKey(name: 'author_name') String? authorName,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
  }) = _ReviewUpdateRequest;

  factory ReviewUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ReviewUpdateRequestFromJson(json);
}
