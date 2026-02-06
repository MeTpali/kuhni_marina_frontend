// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_status_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestStatusUpdateRequestImpl
_$$MeasureRequestStatusUpdateRequestImplFromJson(Map<String, dynamic> json) =>
    _$MeasureRequestStatusUpdateRequestImpl(
      status: $enumDecode(_$MeasureRequestStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$MeasureRequestStatusUpdateRequestImplToJson(
  _$MeasureRequestStatusUpdateRequestImpl instance,
) => <String, dynamic>{
  'status': _$MeasureRequestStatusEnumMap[instance.status]!,
};

const _$MeasureRequestStatusEnumMap = {
  MeasureRequestStatus.NEW: 'NEW',
  MeasureRequestStatus.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatus.DONE: 'DONE',
  MeasureRequestStatus.CANCELLED: 'CANCELLED',
};
