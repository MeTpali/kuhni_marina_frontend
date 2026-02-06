import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type/product_type.dart';

part 'product_list_item_response.freezed.dart';
part 'product_list_item_response.g.dart';

@freezed
class ProductListItemResponse with _$ProductListItemResponse {
  const factory ProductListItemResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductType type,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'price') String? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'main_image') String? mainImage,
  }) = _ProductListItemResponse;

  factory ProductListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListItemResponseFromJson(json);
}
