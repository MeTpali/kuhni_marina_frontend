// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCreateRequestDtoImpl _$$DiscountCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountCreateRequestDtoImpl(
  name: json['name'] as String,
  discountType: $enumDecode(_$DiscountTypeDtoEnumMap, json['discount_type']),
  value: json['value'] as num,
  scope: $enumDecode(_$DiscountScopeDtoEnumMap, json['scope']),
  startDate: json['start_date'] as String,
  endDate: json['end_date'] as String,
  productId: (json['product_id'] as num?)?.toInt(),
  categoryId: (json['category_id'] as num?)?.toInt(),
  productType: $enumDecodeNullable(
    _$ProductTypeDtoEnumMap,
    json['product_type'],
  ),
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$DiscountCreateRequestDtoImplToJson(
  _$DiscountCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'discount_type': _$DiscountTypeDtoEnumMap[instance.discountType]!,
  'value': instance.value,
  'scope': _$DiscountScopeDtoEnumMap[instance.scope]!,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'product_id': instance.productId,
  'category_id': instance.categoryId,
  'product_type': _$ProductTypeDtoEnumMap[instance.productType],
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
