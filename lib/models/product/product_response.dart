import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type/product_type.dart';
import '../category/category_response.dart';
import 'product_attribute_response.dart';
import 'product_image_response.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'category') required CategoryResponse category,
    @Default([]) @JsonKey(name: 'attributes') List<ProductAttributeResponse> attributes,
    @Default([]) @JsonKey(name: 'images') List<ProductImageResponse> images,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
