// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewUpdateRequestImpl _$$ReviewUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewUpdateRequestImpl(
  authorName: json['author_name'] as String?,
  rating: (json['rating'] as num?)?.toInt(),
  text: json['text'] as String?,
  productId: (json['product_id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ReviewUpdateRequestImplToJson(
  _$ReviewUpdateRequestImpl instance,
) => <String, dynamic>{
  'author_name': instance.authorName,
  'rating': instance.rating,
  'text': instance.text,
  'product_id': instance.productId,
  'user_id': instance.userId,
};
