import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status/measure_request_status.dart';

part 'measure_request_update_request.freezed.dart';
part 'measure_request_update_request.g.dart';

@freezed
class MeasureRequestUpdateRequest with _$MeasureRequestUpdateRequest {
  const factory MeasureRequestUpdateRequest({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatus? status,
  }) = _MeasureRequestUpdateRequest;

  factory MeasureRequestUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestUpdateRequestFromJson(json);
}
