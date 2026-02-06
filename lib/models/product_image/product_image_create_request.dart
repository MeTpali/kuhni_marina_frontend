import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_create_request.freezed.dart';
part 'product_image_create_request.g.dart';

@freezed
class ProductImageCreateRequest with _$ProductImageCreateRequest {
  const factory ProductImageCreateRequest({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'image_url') required String imageUrl,
    @Default(false) @JsonKey(name: 'is_main') bool? isMain,
  }) = _ProductImageCreateRequest;

  factory ProductImageCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductImageCreateRequestFromJson(json);
}
