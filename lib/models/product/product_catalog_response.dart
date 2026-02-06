import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_list_item_response.dart';

part 'product_catalog_response.freezed.dart';
part 'product_catalog_response.g.dart';

@freezed
class ProductCatalogResponse with _$ProductCatalogResponse {
  const factory ProductCatalogResponse({
    @JsonKey(name: 'items') required List<ProductListItemResponse> items,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _ProductCatalogResponse;

  factory ProductCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCatalogResponseFromJson(json);
}
