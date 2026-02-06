import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_image_response.dart';

part 'product_image_list_response.freezed.dart';
part 'product_image_list_response.g.dart';

@freezed
class ProductImageListResponse with _$ProductImageListResponse {
  const factory ProductImageListResponse({
    @JsonKey(name: 'items') required List<ProductImageResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProductImageListResponse;

  factory ProductImageListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageListResponseFromJson(json);
}
