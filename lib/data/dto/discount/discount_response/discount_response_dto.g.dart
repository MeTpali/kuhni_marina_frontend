// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountResponseDtoImpl _$$DiscountResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  discountType: $enumDecode(_$DiscountTypeDtoEnumMap, json['discount_type']),
  value: json['value'] as String,
  scope: $enumDecode(_$DiscountScopeDtoEnumMap, json['scope']),
  startDate: json['start_date'] as String,
  endDate: json['end_date'] as String,
  isActive: json['is_active'] as bool,
  createdAt: json['created_at'] as String,
  productId: (json['product_id'] as num?)?.toInt(),
  categoryId: (json['category_id'] as num?)?.toInt(),
  productType: $enumDecodeNullable(
    _$ProductTypeDtoEnumMap,
    json['product_type'],
  ),
  priority: (json['priority'] as num?)?.toInt() ?? 0,
  updatedAt: json['updated_at'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$DiscountResponseDtoImplToJson(
  _$DiscountResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'discount_type': _$DiscountTypeDtoEnumMap[instance.discountType]!,
  'value': instance.value,
  'scope': _$DiscountScopeDtoEnumMap[instance.scope]!,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'is_active': instance.isActive,
  'created_at': instance.createdAt,
  'product_id': instance.productId,
  'category_id': instance.categoryId,
  'product_type': _$ProductTypeDtoEnumMap[instance.productType],
  'priority': instance.priority,
  'updated_at': instance.updatedAt,
  'message': instance.message,
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
