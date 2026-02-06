// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDeleteResponseImpl _$$ReviewDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewDeleteResponseImpl(
  reviewId: (json['review_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ReviewDeleteResponseImplToJson(
  _$ReviewDeleteResponseImpl instance,
) => <String, dynamic>{
  'review_id': instance.reviewId,
  'message': instance.message,
};
