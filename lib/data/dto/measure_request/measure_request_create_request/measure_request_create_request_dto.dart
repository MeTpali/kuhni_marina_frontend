import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status_enum.dart';

part 'measure_request_create_request_dto.freezed.dart';
part 'measure_request_create_request_dto.g.dart';

@freezed
class MeasureRequestCreateRequestDto with _$MeasureRequestCreateRequestDto {
  const factory MeasureRequestCreateRequestDto({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  }) = _MeasureRequestCreateRequestDto;

  factory MeasureRequestCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestCreateRequestDtoFromJson(json);
}
