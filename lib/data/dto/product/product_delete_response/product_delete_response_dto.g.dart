// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDeleteResponseDtoImpl _$$ProductDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDeleteResponseDtoImpl(
  productId: (json['product_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductDeleteResponseDtoImplToJson(
  _$ProductDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'message': instance.message,
};
