// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_discount_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDiscountInfoDtoImpl _$$ProductDiscountInfoDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDiscountInfoDtoImpl(
  discountPercent: json['discount_percent'] as String?,
  discountAmount: json['discount_amount'] as String?,
  finalPrice: json['final_price'] as String?,
);

Map<String, dynamic> _$$ProductDiscountInfoDtoImplToJson(
  _$ProductDiscountInfoDtoImpl instance,
) => <String, dynamic>{
  'discount_percent': instance.discountPercent,
  'discount_amount': instance.discountAmount,
  'final_price': instance.finalPrice,
};
