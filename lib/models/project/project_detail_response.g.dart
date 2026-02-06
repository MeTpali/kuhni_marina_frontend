// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDetailResponseImpl _$$ProjectDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectDetailResponseImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  location: json['location'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ProjectImageResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  productIds:
      (json['product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectDetailResponseImplToJson(
  _$ProjectDetailResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
  'created_at': instance.createdAt.toIso8601String(),
  'images': instance.images,
  'product_ids': instance.productIds,
  'message': instance.message,
};
