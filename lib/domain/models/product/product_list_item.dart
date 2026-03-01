import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_type/product_type.dart';

part 'product_list_item.freezed.dart';

/// Элемент списка товаров (каталог, превью).
@freezed
class ProductListItem with _$ProductListItem {
  const factory ProductListItem({
    required int id,
    required String name,
    required String slug,
    required int categoryId,
    required ProductType type,
    String? categoryName,
    String? price,
    @Default(false) bool isNew,
    @Default(false) bool isHit,
    @Default(true) bool isActive,
    String? mainImage,
  }) = _ProductListItem;
}
