// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductDeleteResponseDtoImpl
_$$ProjectProductDeleteResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectProductDeleteResponseDtoImpl(
      projectId: (json['project_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProjectProductDeleteResponseDtoImplToJson(
  _$ProjectProductDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'project_id': instance.projectId,
  'product_id': instance.productId,
  'message': instance.message,
};
