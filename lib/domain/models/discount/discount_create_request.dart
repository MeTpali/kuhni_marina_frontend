import 'package:freezed_annotation/freezed_annotation.dart';

import '../discount_scope/discount_scope.dart';
import '../discount_type/discount_type.dart';
import '../product_type/product_type.dart';

part 'discount_create_request.freezed.dart';

@freezed
class DiscountCreateRequest with _$DiscountCreateRequest {
  const factory DiscountCreateRequest({
    required String name,
    required DiscountType discountType,
    required num value,
    required DiscountScope scope,
    required String startDate,
    required String endDate,
    int? productId,
    int? categoryId,
    ProductType? productType,
    @Default(0) int priority,
    @Default(true) bool isActive,
  }) = _DiscountCreateRequest;
}
