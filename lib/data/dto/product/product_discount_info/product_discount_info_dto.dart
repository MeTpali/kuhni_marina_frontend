import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_discount_info_dto.freezed.dart';
part 'product_discount_info_dto.g.dart';

/// Информация о скидке на продукт (DTO).
@freezed
class ProductDiscountInfoDto with _$ProductDiscountInfoDto {
  const factory ProductDiscountInfoDto({
    @JsonKey(name: 'discount_percent') String? discountPercent,
    @JsonKey(name: 'discount_amount') String? discountAmount,
    @JsonKey(name: 'final_price') String? finalPrice,
  }) = _ProductDiscountInfoDto;

  factory ProductDiscountInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDiscountInfoDtoFromJson(json);
}
