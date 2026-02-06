// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_id_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductIdListResponseImpl _$$ProductIdListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductIdListResponseImpl(
  productIds: (json['product_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  total: (json['total'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductIdListResponseImplToJson(
  _$ProductIdListResponseImpl instance,
) => <String, dynamic>{
  'product_ids': instance.productIds,
  'total': instance.total,
  'message': instance.message,
};
