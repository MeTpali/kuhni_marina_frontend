// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountDeleteResponseDtoImpl _$$DiscountDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountDeleteResponseDtoImpl(
  discountId: (json['discount_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$DiscountDeleteResponseDtoImplToJson(
  _$DiscountDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'discount_id': instance.discountId,
  'message': instance.message,
};
