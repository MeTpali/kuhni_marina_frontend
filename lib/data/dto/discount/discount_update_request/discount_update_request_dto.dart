import 'package:freezed_annotation/freezed_annotation.dart';

import '../../product/product_type_dto.dart';
import '../discount_scope_dto.dart';
import '../discount_type_dto.dart';

part 'discount_update_request_dto.freezed.dart';
part 'discount_update_request_dto.g.dart';

@freezed
class DiscountUpdateRequestDto with _$DiscountUpdateRequestDto {
  const factory DiscountUpdateRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'discount_type') DiscountTypeDto? discountType,
    @JsonKey(name: 'value') num? value,
    @JsonKey(name: 'scope') DiscountScopeDto? scope,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _DiscountUpdateRequestDto;

  factory DiscountUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DiscountUpdateRequestDtoFromJson(json);
}
