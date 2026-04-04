// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_favorite_mutation_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductFavoriteMutationResponseDtoImpl
_$$ProductFavoriteMutationResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductFavoriteMutationResponseDtoImpl(
      productId: (json['product_id'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProductFavoriteMutationResponseDtoImplToJson(
  _$ProductFavoriteMutationResponseDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'message': instance.message,
};
