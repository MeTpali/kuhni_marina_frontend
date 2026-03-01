import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_list_item_response/product_list_item_response_dto.dart';

part 'product_catalog_response_dto.freezed.dart';
part 'product_catalog_response_dto.g.dart';

@freezed
class ProductCatalogResponseDto with _$ProductCatalogResponseDto {
  const factory ProductCatalogResponseDto({
    @JsonKey(name: 'items') required List<ProductListItemResponseDto> items,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _ProductCatalogResponseDto;

  factory ProductCatalogResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCatalogResponseDtoFromJson(json);
}
