import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_delete_response.freezed.dart';
part 'attribute_delete_response.g.dart';

@freezed
class AttributeDeleteResponse with _$AttributeDeleteResponse {
  const factory AttributeDeleteResponse({
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeDeleteResponse;

  factory AttributeDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AttributeDeleteResponseFromJson(json);
}
