import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_delete_response.freezed.dart';
part 'category_delete_response.g.dart';

@freezed
class CategoryDeleteResponse with _$CategoryDeleteResponse {
  const factory CategoryDeleteResponse({
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryDeleteResponse;

  factory CategoryDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryDeleteResponseFromJson(json);
}
