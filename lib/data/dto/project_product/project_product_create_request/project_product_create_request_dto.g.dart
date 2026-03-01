// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductCreateRequestDtoImpl
_$$ProjectProductCreateRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectProductCreateRequestDtoImpl(
      projectId: (json['project_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectProductCreateRequestDtoImplToJson(
  _$ProjectProductCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
};
