import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_create_request.freezed.dart';

@freezed
class AttributeCreateRequest with _$AttributeCreateRequest {
  const factory AttributeCreateRequest({
    required String name,
    String? unit,
  }) = _AttributeCreateRequest;
}
