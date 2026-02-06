import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_response.freezed.dart';
part 'attribute_response.g.dart';

@freezed
class AttributeResponse with _$AttributeResponse {
  const factory AttributeResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeResponse;

  factory AttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$AttributeResponseFromJson(json);
}
