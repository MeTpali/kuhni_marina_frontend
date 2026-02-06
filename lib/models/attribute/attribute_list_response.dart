import 'package:freezed_annotation/freezed_annotation.dart';
import 'attribute_response.dart';

part 'attribute_list_response.freezed.dart';
part 'attribute_list_response.g.dart';

@freezed
class AttributeListResponse with _$AttributeListResponse {
  const factory AttributeListResponse({
    @JsonKey(name: 'items') required List<AttributeResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeListResponse;

  factory AttributeListResponse.fromJson(Map<String, dynamic> json) =>
      _$AttributeListResponseFromJson(json);
}
