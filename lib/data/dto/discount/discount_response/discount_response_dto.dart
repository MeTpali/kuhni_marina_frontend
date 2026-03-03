import 'package:freezed_annotation/freezed_annotation.dart';

import '../../product/product_type_dto.dart';
import '../discount_scope_dto.dart';
import '../discount_type_dto.dart';

part 'discount_response_dto.freezed.dart';
part 'discount_response_dto.g.dart';

@freezed
class DiscountResponseDto with _$DiscountResponseDto {
  const factory DiscountResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'discount_type') required DiscountTypeDto discountType,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'scope') required DiscountScopeDto scope,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') @Default(0) int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  }) = _DiscountResponseDto;

  factory DiscountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiscountResponseDtoFromJson(json);
}
