// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageListResponseImpl _$$ProductImageListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProductImageResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductImageListResponseImplToJson(
  _$ProductImageListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
