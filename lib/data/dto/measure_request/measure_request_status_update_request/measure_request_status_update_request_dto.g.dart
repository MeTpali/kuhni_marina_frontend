// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_status_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestStatusUpdateRequestDtoImpl
_$$MeasureRequestStatusUpdateRequestDtoImplFromJson(
  Map<String, dynamic> json,
) => _$MeasureRequestStatusUpdateRequestDtoImpl(
  status: $enumDecode(_$MeasureRequestStatusEnumEnumMap, json['status']),
);

Map<String, dynamic> _$$MeasureRequestStatusUpdateRequestDtoImplToJson(
  _$MeasureRequestStatusUpdateRequestDtoImpl instance,
) => <String, dynamic>{
  'status': _$MeasureRequestStatusEnumEnumMap[instance.status]!,
};

const _$MeasureRequestStatusEnumEnumMap = {
  MeasureRequestStatusEnum.NEW: 'NEW',
  MeasureRequestStatusEnum.IN_PROGRESS: 'IN_PROGRESS',
  MeasureRequestStatusEnum.DONE: 'DONE',
  MeasureRequestStatusEnum.CANCELLED: 'CANCELLED',
};
