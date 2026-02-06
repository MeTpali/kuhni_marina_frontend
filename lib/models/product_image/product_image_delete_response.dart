import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_delete_response.freezed.dart';
part 'product_image_delete_response.g.dart';

@freezed
class ProductImageDeleteResponse with _$ProductImageDeleteResponse {
  const factory ProductImageDeleteResponse({
    @JsonKey(name: 'product_image_id') required int productImageId,
    @JsonKey(name: 'message') String? message,
  }) = _ProductImageDeleteResponse;

  factory ProductImageDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDeleteResponseFromJson(json);
}
