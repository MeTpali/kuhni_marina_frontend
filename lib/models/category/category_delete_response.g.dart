// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDeleteResponseImpl _$$CategoryDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryDeleteResponseImpl(
  categoryId: (json['category_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryDeleteResponseImplToJson(
  _$CategoryDeleteResponseImpl instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'message': instance.message,
};
