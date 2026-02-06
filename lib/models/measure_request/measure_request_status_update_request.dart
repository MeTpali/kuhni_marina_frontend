import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status/measure_request_status.dart';

part 'measure_request_status_update_request.freezed.dart';
part 'measure_request_status_update_request.g.dart';

@freezed
class MeasureRequestStatusUpdateRequest with _$MeasureRequestStatusUpdateRequest {
  const factory MeasureRequestStatusUpdateRequest({
    @JsonKey(name: 'status') required MeasureRequestStatus status,
  }) = _MeasureRequestStatusUpdateRequest;

  factory MeasureRequestStatusUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestStatusUpdateRequestFromJson(json);
}
