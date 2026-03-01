// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDetailResponseDtoImpl _$$ProjectDetailResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectDetailResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  location: json['location'] as String?,
  images:
      (json['images'] as List<dynamic>?)
          ?.map(
            (e) => ProjectImageResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  productIds:
      (json['product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectDetailResponseDtoImplToJson(
  _$ProjectDetailResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
  'description': instance.description,
  'location': instance.location,
  'images': instance.images,
  'product_ids': instance.productIds,
  'message': instance.message,
};
