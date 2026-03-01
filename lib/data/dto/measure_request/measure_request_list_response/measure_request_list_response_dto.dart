import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_response/measure_request_response_dto.dart';

part 'measure_request_list_response_dto.freezed.dart';
part 'measure_request_list_response_dto.g.dart';

@freezed
class MeasureRequestListResponseDto with _$MeasureRequestListResponseDto {
  const factory MeasureRequestListResponseDto({
    @JsonKey(name: 'items') required List<MeasureRequestResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _MeasureRequestListResponseDto;

  factory MeasureRequestListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestListResponseDtoFromJson(json);
}
