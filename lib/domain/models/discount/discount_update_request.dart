import 'package:freezed_annotation/freezed_annotation.dart';

import '../discount_scope/discount_scope.dart';
import '../discount_type/discount_type.dart';
import '../product_type/product_type.dart';

part 'discount_update_request.freezed.dart';

@freezed
class DiscountUpdateRequest with _$DiscountUpdateRequest {
  const factory DiscountUpdateRequest({
    String? name,
    DiscountType? discountType,
    num? value,
    DiscountScope? scope,
    int? productId,
    int? categoryId,
    ProductType? productType,
    String? startDate,
    String? endDate,
    int? priority,
    bool? isActive,
  }) = _DiscountUpdateRequest;
}
