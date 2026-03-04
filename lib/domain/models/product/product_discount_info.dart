import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_discount_info.freezed.dart';

/// Информация о скидке на товар (доменная модель).
@freezed
class ProductDiscountInfo with _$ProductDiscountInfo {
  const factory ProductDiscountInfo({
    String? discountPercent,
    String? discountAmount,
    String? finalPrice,
  }) = _ProductDiscountInfo;
}
