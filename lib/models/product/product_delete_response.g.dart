// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDeleteResponseImpl _$$ProductDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDeleteResponseImpl(
  productId: (json['product_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductDeleteResponseImplToJson(
  _$ProductDeleteResponseImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'message': instance.message,
};
