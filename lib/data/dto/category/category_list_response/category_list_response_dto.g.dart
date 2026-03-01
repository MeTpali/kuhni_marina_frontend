// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListResponseDtoImpl _$$CategoryListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => CategoryTreeNodeDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryListResponseDtoImplToJson(
  _$CategoryListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
