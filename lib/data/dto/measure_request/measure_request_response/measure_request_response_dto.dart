import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status_enum.dart';

part 'measure_request_response_dto.freezed.dart';
part 'measure_request_response_dto.g.dart';

@freezed
class MeasureRequestResponseDto with _$MeasureRequestResponseDto {
  const factory MeasureRequestResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'status') required MeasureRequestStatusEnum status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'message') String? message,
  }) = _MeasureRequestResponseDto;

  factory MeasureRequestResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestResponseDtoFromJson(json);
}
