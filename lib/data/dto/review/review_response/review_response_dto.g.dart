// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewResponseDtoImpl _$$ReviewResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  authorName: json['author_name'] as String,
  rating: (json['rating'] as num).toInt(),
  text: json['text'] as String,
  isApproved: json['is_approved'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  productId: (json['product_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ReviewResponseDtoImplToJson(
  _$ReviewResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'author_name': instance.authorName,
  'rating': instance.rating,
  'text': instance.text,
  'is_approved': instance.isApproved,
  'created_at': instance.createdAt.toIso8601String(),
  'product_id': instance.productId,
  'user_id': instance.userId,
  'message': instance.message,
};
