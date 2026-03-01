// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductListResponseDtoImpl
_$$ProjectProductListResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectProductListResponseDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) =>
                ProjectProductResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProjectProductListResponseDtoImplToJson(
  _$ProjectProductListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
