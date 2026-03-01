import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_update_request.freezed.dart';

@freezed
class AttributeUpdateRequest with _$AttributeUpdateRequest {
  const factory AttributeUpdateRequest({
    required String name,
    String? unit,
  }) = _AttributeUpdateRequest;
}
