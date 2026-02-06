// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestResponseImpl _$$MeasureRequestResponseImplFromJson(
  Map<String, dynamic> json,
) => _$MeasureRequestResponseImpl(
  id: (json['id'] as num).toInt(),
  fullName: json['full_name'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  preferredDate: json['preferred_date'] == null
      ? null
      : DateTime.parse(json['preferred_date'] as String),
  comment: json['comment'] as String?,
  status: $enumDecode(_$MeasureRequestStatusEnumMap, json['status']),
  createdAt: DateTime.parse(json['created_at'] as String),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$MeasureRequestResponseImplToJson(
  _$MeasureRequestResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'phone': instance.phone,
  'address': instance.address,
  'preferred_date': instance.preferredDate?.toIso8601String(),
  'comment': instance.comment,
  'status': _$MeasureRequestStatusEnumMap[instance.status]!,
  'created_at': instance.createdAt.toIso8601String(),
  'message': instance.message,
};

const _$MeasureRequestStatusEnumMap = {
  MeasureRequestStatus.NEW: 'NEW',
  MeasureRequestStatus.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatus.DONE: 'DONE',
  MeasureRequestStatus.CANCELLED: 'CANCELLED',
};
