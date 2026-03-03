// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountUpdateRequestDtoImpl _$$DiscountUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountUpdateRequestDtoImpl(
  name: json['name'] as String?,
  discountType: $enumDecodeNullable(
    _$DiscountTypeDtoEnumMap,
    json['discount_type'],
  ),
  value: json['value'] as num?,
  scope: $enumDecodeNullable(_$DiscountScopeDtoEnumMap, json['scope']),
  productId: (json['product_id'] as num?)?.toInt(),
  categoryId: (json['category_id'] as num?)?.toInt(),
  productType: $enumDecodeNullable(
    _$ProductTypeDtoEnumMap,
    json['product_type'],
  ),
  startDate: json['start_date'] as String?,
  endDate: json['end_date'] as String?,
  priority: (json['priority'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$$DiscountUpdateRequestDtoImplToJson(
  _$DiscountUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'discount_type': _$DiscountTypeDtoEnumMap[instance.discountType],
  'value': instance.value,
  'scope': _$DiscountScopeDtoEnumMap[instance.scope],
  'product_id': instance.productId,
  'category_id': instance.categoryId,
  'product_type': _$ProductTypeDtoEnumMap[instance.productType],
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'priority': instance.priority,
  'is_active': instance.isActive,
};

const _$DiscountTypeDtoEnumMap = {
  DiscountTypeDto.PERCENTAGE: 'PERCENTAGE',
  DiscountTypeDto.FIXED: 'FIXED',
};

const _$DiscountScopeDtoEnumMap = {
  DiscountScopeDto.PRODUCT: 'PRODUCT',
  DiscountScopeDto.CATEGORY: 'CATEGORY',
  DiscountScopeDto.TYPE: 'TYPE',
  DiscountScopeDto.ALL: 'ALL',
};

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.KITCHEN: 'KITCHEN',
  ProductTypeDto.FURNITURE: 'FURNITURE',
};
