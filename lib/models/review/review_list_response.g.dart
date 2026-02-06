// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewListResponseImpl _$$ReviewListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ReviewResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ReviewListResponseImplToJson(
  _$ReviewListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
