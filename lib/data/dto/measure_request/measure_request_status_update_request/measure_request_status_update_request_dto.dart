import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status_enum.dart';

part 'measure_request_status_update_request_dto.freezed.dart';
part 'measure_request_status_update_request_dto.g.dart';

@freezed
class MeasureRequestStatusUpdateRequestDto
    with _$MeasureRequestStatusUpdateRequestDto {
  const factory MeasureRequestStatusUpdateRequestDto({
    @JsonKey(name: 'status') required MeasureRequestStatusEnum status,
  }) = _MeasureRequestStatusUpdateRequestDto;

  factory MeasureRequestStatusUpdateRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$MeasureRequestStatusUpdateRequestDtoFromJson(json);
}
