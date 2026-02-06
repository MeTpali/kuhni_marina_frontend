import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_update_request.freezed.dart';
part 'product_attribute_update_request.g.dart';

@freezed
class ProductAttributeUpdateRequest with _$ProductAttributeUpdateRequest {
  const factory ProductAttributeUpdateRequest({
    @JsonKey(name: 'value') required String value,
  }) = _ProductAttributeUpdateRequest;

  factory ProductAttributeUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeUpdateRequestFromJson(json);
}
