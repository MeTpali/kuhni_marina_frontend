import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_response.freezed.dart';
part 'product_image_response.g.dart';

@freezed
class ProductImageResponse with _$ProductImageResponse {
  const factory ProductImageResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'message') String? message,
  }) = _ProductImageResponse;

  factory ProductImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageResponseFromJson(json);
}
