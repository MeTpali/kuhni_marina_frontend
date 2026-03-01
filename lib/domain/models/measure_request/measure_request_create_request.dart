import 'package:freezed_annotation/freezed_annotation.dart';

import '../measure_request_status/measure_request_status.dart';

part 'measure_request_create_request.freezed.dart';

@freezed
class MeasureRequestCreateRequest with _$MeasureRequestCreateRequest {
  const factory MeasureRequestCreateRequest({
    required String fullName,
    required String phone,
    required String address,
    DateTime? preferredDate,
    String? comment,
    MeasureRequestStatus? status,
  }) = _MeasureRequestCreateRequest;
}
