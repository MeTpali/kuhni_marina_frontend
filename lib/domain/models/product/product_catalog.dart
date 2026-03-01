import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_list_item.dart';

part 'product_catalog.freezed.dart';

/// Ответ каталога товаров (список с пагинацией).
@freezed
class ProductCatalog with _$ProductCatalog {
  const factory ProductCatalog({
    required List<ProductListItem> items,
    required int total,
    required int page,
    required int pageSize,
    required int totalPages,
  }) = _ProductCatalog;
}
