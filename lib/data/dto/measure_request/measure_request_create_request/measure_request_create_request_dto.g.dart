// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestCreateRequestDtoImpl
_$$MeasureRequestCreateRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$MeasureRequestCreateRequestDtoImpl(
      fullName: json['full_name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      preferredDate: json['preferred_date'] == null
          ? null
          : DateTime.parse(json['preferred_date'] as String),
      comment: json['comment'] as String?,
      status: $enumDecodeNullable(
        _$MeasureRequestStatusEnumEnumMap,
        json['status'],
      ),
    );

Map<String, dynamic> _$$MeasureRequestCreateRequestDtoImplToJson(
  _$MeasureRequestCreateRequestDtoImpl instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'phone': instance.phone,
  'address': instance.address,
  'preferred_date': instance.preferredDate?.toIso8601String(),
  'comment': instance.comment,
  'status': _$MeasureRequestStatusEnumEnumMap[instance.status],
};

const _$MeasureRequestStatusEnumEnumMap = {
  MeasureRequestStatusEnum.NEW: 'NEW',
  MeasureRequestStatusEnum.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatusEnum.DONE: 'DONE',
  MeasureRequestStatusEnum.CANCELLED: 'CANCELLED',
};
