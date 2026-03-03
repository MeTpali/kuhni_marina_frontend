import 'package:freezed_annotation/freezed_annotation.dart';

import 'discount.dart';

part 'discount_catalog.freezed.dart';

/// Список скидок с пагинацией.
@freezed
class DiscountCatalog with _$DiscountCatalog {
  const factory DiscountCatalog({
    required List<Discount> items,
    required int total,
    required int page,
    required int pageSize,
    required int totalPages,
  }) = _DiscountCatalog;
}
