// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageCreateRequestDtoImpl _$$ProductImageCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageCreateRequestDtoImpl(
  productId: (json['product_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool? ?? false,
);

Map<String, dynamic> _$$ProductImageCreateRequestDtoImplToJson(
  _$ProductImageCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
};
