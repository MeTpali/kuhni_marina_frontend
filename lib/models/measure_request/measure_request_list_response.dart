import 'package:freezed_annotation/freezed_annotation.dart';
import 'measure_request_response.dart';

part 'measure_request_list_response.freezed.dart';
part 'measure_request_list_response.g.dart';

@freezed
class MeasureRequestListResponse with _$MeasureRequestListResponse {
  const factory MeasureRequestListResponse({
    @JsonKey(name: 'items') required List<MeasureRequestResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _MeasureRequestListResponse;

  factory MeasureRequestListResponse.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestListResponseFromJson(json);
}
