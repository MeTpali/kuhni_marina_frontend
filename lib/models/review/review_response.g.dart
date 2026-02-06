// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewResponseImpl _$$ReviewResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReviewResponseImpl(
      id: (json['id'] as num).toInt(),
      authorName: json['author_name'] as String,
      rating: (json['rating'] as num).toInt(),
      text: json['text'] as String,
      productId: (json['product_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      isApproved: json['is_approved'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ReviewResponseImplToJson(
  _$ReviewResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'author_name': instance.authorName,
  'rating': instance.rating,
  'text': instance.text,
  'product_id': instance.productId,
  'user_id': instance.userId,
  'is_approved': instance.isApproved,
  'created_at': instance.createdAt.toIso8601String(),
  'message': instance.message,
};
