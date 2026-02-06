// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_ids_by_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectIdsByProductResponseImpl _$$ProjectIdsByProductResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectIdsByProductResponseImpl(
  productId: (json['product_id'] as num).toInt(),
  projectIds: (json['project_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectIdsByProductResponseImplToJson(
  _$ProjectIdsByProductResponseImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'project_ids': instance.projectIds,
  'message': instance.message,
};
