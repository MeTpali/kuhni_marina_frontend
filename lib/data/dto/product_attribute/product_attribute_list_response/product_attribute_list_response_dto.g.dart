// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeListResponseDtoImpl
_$$ProductAttributeListResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductAttributeListResponseDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) =>
                ProductAttributeResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProductAttributeListResponseDtoImplToJson(
  _$ProductAttributeListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
