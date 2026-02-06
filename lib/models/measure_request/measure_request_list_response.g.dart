// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestListResponseImpl _$$MeasureRequestListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MeasureRequestListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => MeasureRequestResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$MeasureRequestListResponseImplToJson(
  _$MeasureRequestListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
