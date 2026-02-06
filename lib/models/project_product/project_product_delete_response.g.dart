// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductDeleteResponseImpl _$$ProjectProductDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectProductDeleteResponseImpl(
  projectId: (json['project_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectProductDeleteResponseImplToJson(
  _$ProjectProductDeleteResponseImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
  'message': instance.message,
};
