// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductResponseImpl _$$ProjectProductResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectProductResponseImpl(
  projectId: (json['project_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectProductResponseImplToJson(
  _$ProjectProductResponseImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
  'message': instance.message,
};
