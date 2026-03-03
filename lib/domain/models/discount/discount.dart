import 'package:freezed_annotation/freezed_annotation.dart';

import '../discount_scope/discount_scope.dart';
import '../discount_type/discount_type.dart';
import '../product_type/product_type.dart';

part 'discount.freezed.dart';

/// Доменная сущность скидки.
@freezed
class Discount with _$Discount {
  const factory Discount({
    required int id,
    required String name,
    required DiscountType discountType,
    required String value,
    required DiscountScope scope,
    required String startDate,
    required String endDate,
    required bool isActive,
    required String createdAt,
    int? productId,
    int? categoryId,
    ProductType? productType,
    @Default(0) int priority,
    String? updatedAt,
  }) = _Discount;
}
