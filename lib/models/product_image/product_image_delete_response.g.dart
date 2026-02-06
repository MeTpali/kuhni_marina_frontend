// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageDeleteResponseImpl _$$ProductImageDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageDeleteResponseImpl(
  productImageId: (json['product_image_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductImageDeleteResponseImplToJson(
  _$ProductImageDeleteResponseImpl instance,
) => <String, dynamic>{
  'product_image_id': instance.productImageId,
  'message': instance.message,
};
