// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductCreateRequestImpl _$$ProjectProductCreateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectProductCreateRequestImpl(
  projectId: (json['project_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
);

Map<String, dynamic> _$$ProjectProductCreateRequestImplToJson(
  _$ProjectProductCreateRequestImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
};
