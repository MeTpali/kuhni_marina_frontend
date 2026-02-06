// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestUpdateRequestImpl _$$MeasureRequestUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$MeasureRequestUpdateRequestImpl(
  fullName: json['full_name'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  preferredDate: json['preferred_date'] == null
      ? null
      : DateTime.parse(json['preferred_date'] as String),
  comment: json['comment'] as String?,
  status: $enumDecodeNullable(_$MeasureRequestStatusEnumMap, json['status']),
);

Map<String, dynamic> _$$MeasureRequestUpdateRequestImplToJson(
  _$MeasureRequestUpdateRequestImpl instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'phone': instance.phone,
  'address': instance.address,
  'preferred_date': instance.preferredDate?.toIso8601String(),
  'comment': instance.comment,
  'status': _$MeasureRequestStatusEnumMap[instance.status],
};

const _$MeasureRequestStatusEnumMap = {
  MeasureRequestStatus.NEW: 'NEW',
  MeasureRequestStatus.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatus.DONE: 'DONE',
  MeasureRequestStatus.CANCELLED: 'CANCELLED',
};
