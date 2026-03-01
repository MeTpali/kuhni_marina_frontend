// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_request_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasureRequestListResponseDtoImpl
_$$MeasureRequestListResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$MeasureRequestListResponseDtoImpl(
      items: (json['items'] as List<dynamic>)
          .map(
            (e) =>
                MeasureRequestResponseDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MeasureRequestListResponseDtoImplToJson(
  _$MeasureRequestListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
