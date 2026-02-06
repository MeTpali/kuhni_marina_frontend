// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageResponseImpl _$$ProductImageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageResponseImpl(
  id: (json['id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool? ?? false,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductImageResponseImplToJson(
  _$ProductImageResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
  'message': instance.message,
};
