// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestResponseDtoImpl _$$MeasureRequestResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$MeasureRequestResponseDtoImpl(
  id: (json['id'] as num).toInt(),
  fullName: json['full_name'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  status: $enumDecode(_$MeasureRequestStatusEnumEnumMap, json['status']),
  createdAt: DateTime.parse(json['created_at'] as String),
  preferredDate: json['preferred_date'] == null
      ? null
      : DateTime.parse(json['preferred_date'] as String),
  comment: json['comment'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$$MeasureRequestResponseDtoImplToJson(
  _$MeasureRequestResponseDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'phone': instance.phone,
  'address': instance.address,
  'status': _$MeasureRequestStatusEnumEnumMap[instance.status]!,
  'created_at': instance.createdAt.toIso8601String(),
  'preferred_date': instance.preferredDate?.toIso8601String(),
  'comment': instance.comment,
  'message': instance.message,
};

const _$MeasureRequestStatusEnumEnumMap = {
  MeasureRequestStatusEnum.NEW: 'NEW',
  MeasureRequestStatusEnum.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatusEnum.DONE: 'DONE',
  MeasureRequestStatusEnum.CANCELLED: 'CANCELLED',
};
