import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_create_request.freezed.dart';
part 'attribute_create_request.g.dart';

@freezed
class AttributeCreateRequest with _$AttributeCreateRequest {
  const factory AttributeCreateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
  }) = _AttributeCreateRequest;

  factory AttributeCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$AttributeCreateRequestFromJson(json);
}
