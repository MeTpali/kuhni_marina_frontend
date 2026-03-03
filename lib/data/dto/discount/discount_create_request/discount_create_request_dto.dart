import 'package:freezed_annotation/freezed_annotation.dart';

import '../../product/product_type_dto.dart';
import '../discount_scope_dto.dart';
import '../discount_type_dto.dart';

part 'discount_create_request_dto.freezed.dart';
part 'discount_create_request_dto.g.dart';

@freezed
class DiscountCreateRequestDto with _$DiscountCreateRequestDto {
  const factory DiscountCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'discount_type') required DiscountTypeDto discountType,
    @JsonKey(name: 'value') required num value,
    @JsonKey(name: 'scope') required DiscountScopeDto scope,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') @Default(0) int priority,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _DiscountCreateRequestDto;

  factory DiscountCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DiscountCreateRequestDtoFromJson(json);
}
