// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_id_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductIdListResponseDtoImpl _$$ProductIdListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductIdListResponseDtoImpl(
  productIds: (json['product_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  total: (json['total'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductIdListResponseDtoImplToJson(
  _$ProductIdListResponseDtoImpl instance,
) => <String, dynamic>{
  'product_ids': instance.productIds,
  'total': instance.total,
  'message': instance.message,
};
