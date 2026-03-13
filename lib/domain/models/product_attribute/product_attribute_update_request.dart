import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_update_request.freezed.dart';

@freezed
class ProductAttributeUpdateRequest with _$ProductAttributeUpdateRequest {
  const factory ProductAttributeUpdateRequest({
    required String value,
  }) = _ProductAttributeUpdateRequest;
}
