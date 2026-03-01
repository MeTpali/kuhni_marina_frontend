// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageResponseDtoImpl _$$ProductImageResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool? ?? false,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductImageResponseDtoImplToJson(
  _$ProductImageResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
  'message': instance.message,
};
