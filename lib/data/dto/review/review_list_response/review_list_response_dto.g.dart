// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewListResponseDtoImpl _$$ReviewListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ReviewResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ReviewListResponseDtoImplToJson(
  _$ReviewListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
