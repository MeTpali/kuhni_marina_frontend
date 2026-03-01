import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status_enum.dart';

part 'measure_request_update_request_dto.freezed.dart';
part 'measure_request_update_request_dto.g.dart';

@freezed
class MeasureRequestUpdateRequestDto with _$MeasureRequestUpdateRequestDto {
  const factory MeasureRequestUpdateRequestDto({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  }) = _MeasureRequestUpdateRequestDto;

  factory MeasureRequestUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestUpdateRequestDtoFromJson(json);
}
