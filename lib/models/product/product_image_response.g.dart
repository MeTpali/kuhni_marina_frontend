// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageResponseImpl _$$ProductImageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImageResponseImpl(
  id: (json['id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  isMain: json['is_main'] as bool,
);

Map<String, dynamic> _$$ProductImageResponseImplToJson(
  _$ProductImageResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'image_url': instance.imageUrl,
  'is_main': instance.isMain,
};
