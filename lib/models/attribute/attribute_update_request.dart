import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_update_request.freezed.dart';
part 'attribute_update_request.g.dart';

@freezed
class AttributeUpdateRequest with _$AttributeUpdateRequest {
  const factory AttributeUpdateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
  }) = _AttributeUpdateRequest;

  factory AttributeUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AttributeUpdateRequestFromJson(json);
}
