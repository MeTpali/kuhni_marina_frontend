// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDeleteResponseDtoImpl _$$ReviewDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewDeleteResponseDtoImpl(
  reviewId: (json['review_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ReviewDeleteResponseDtoImplToJson(
  _$ReviewDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'review_id': instance.reviewId,
  'message': instance.message,
};
