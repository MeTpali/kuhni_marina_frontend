// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_ids_by_product_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectIdsByProductResponseDtoImpl
_$$ProjectIdsByProductResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectIdsByProductResponseDtoImpl(
      productId: (json['product_id'] as num).toInt(),
      projectIds: (json['project_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProjectIdsByProductResponseDtoImplToJson(
  _$ProjectIdsByProductResponseDtoImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'project_ids': instance.projectIds,
  'message': instance.message,
};
