import 'package:freezed_annotation/freezed_annotation.dart';

import '../measure_request_status/measure_request_status.dart';

part 'measure_request_update_request.freezed.dart';

@freezed
class MeasureRequestUpdateRequest with _$MeasureRequestUpdateRequest {
  const factory MeasureRequestUpdateRequest({
    String? fullName,
    String? phone,
    String? address,
    DateTime? preferredDate,
    String? comment,
    MeasureRequestStatus? status,
  }) = _MeasureRequestUpdateRequest;
}
