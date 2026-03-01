// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDeleteResponseDtoImpl _$$CategoryDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryDeleteResponseDtoImpl(
  categoryId: (json['category_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryDeleteResponseDtoImplToJson(
  _$CategoryDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'message': instance.message,
};
