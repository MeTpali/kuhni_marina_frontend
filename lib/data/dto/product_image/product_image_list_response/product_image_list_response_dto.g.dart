// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageListResponseDtoImpl _$$ProductImageListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProductImageResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductImageListResponseDtoImplToJson(
  _$ProductImageListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
