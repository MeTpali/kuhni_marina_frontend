// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageDeleteResponseDtoImpl
_$$ProductImageDeleteResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageDeleteResponseDtoImpl(
      productImageId: (json['product_image_id'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProductImageDeleteResponseDtoImplToJson(
  _$ProductImageDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'product_image_id': instance.productImageId,
  'message': instance.message,
};
