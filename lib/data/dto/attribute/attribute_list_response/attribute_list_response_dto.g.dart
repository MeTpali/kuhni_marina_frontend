// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeListResponseDtoImpl _$$AttributeListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => AttributeResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeListResponseDtoImplToJson(
  _$AttributeListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
