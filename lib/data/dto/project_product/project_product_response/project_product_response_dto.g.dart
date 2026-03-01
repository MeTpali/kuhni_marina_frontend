// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductResponseDtoImpl _$$ProjectProductResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectProductResponseDtoImpl(
  projectId: (json['project_id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectProductResponseDtoImplToJson(
  _$ProjectProductResponseDtoImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
  'message': instance.message,
};
