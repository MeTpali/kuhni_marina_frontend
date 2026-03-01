// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewCreateRequestDtoImpl _$$ReviewCreateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewCreateRequestDtoImpl(
  authorName: json['author_name'] as String,
  rating: (json['rating'] as num).toInt(),
  text: json['text'] as String,
  productId: (json['product_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  isApproved: json['is_approved'] as bool? ?? false,
);

Map<String, dynamic> _$$ReviewCreateRequestDtoImplToJson(
  _$ReviewCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'author_name': instance.authorName,
  'rating': instance.rating,
  'text': instance.text,
  'product_id': instance.productId,
  'user_id': instance.userId,
  'is_approved': instance.isApproved,
};
