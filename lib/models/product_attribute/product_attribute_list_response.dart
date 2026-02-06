import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_attribute_response.dart';

part 'product_attribute_list_response.freezed.dart';
part 'product_attribute_list_response.g.dart';

@freezed
class ProductAttributeListResponse with _$ProductAttributeListResponse {
  const factory ProductAttributeListResponse({
    @JsonKey(name: 'items') required List<ProductAttributeResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProductAttributeListResponse;

  factory ProductAttributeListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeListResponseFromJson(json);
}
