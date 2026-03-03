import 'package:freezed_annotation/freezed_annotation.dart';

import '../category/category.dart';
import '../product_type/product_type.dart';
import 'product_attribute.dart';
import 'product_discount_info.dart';
import 'product_image.dart';

part 'product.freezed.dart';

/// Доменная сущность товара (полная карточка).
@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required int categoryId,
    required ProductType type,
    required Category category,
    required String createdAt,
    String? slug,
    String? description,
    String? price,
    @Default(false) bool isNew,
    @Default(false) bool isHit,
    @Default(true) bool isActive,
    @Default([]) List<ProductAttribute> attributes,
    @Default([]) List<ProductImage> images,
    String? updatedAt,
    ProductDiscountInfo? discount,
  }) = _Product;
}
