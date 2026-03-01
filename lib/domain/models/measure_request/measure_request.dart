import 'package:freezed_annotation/freezed_annotation.dart';

import '../measure_request_status/measure_request_status.dart';

part 'measure_request.freezed.dart';

/// Доменная сущность заявки на замер.
@freezed
class MeasureRequest with _$MeasureRequest {
  const factory MeasureRequest({
    required int id,
    required String fullName,
    required String phone,
    required String address,
    required MeasureRequestStatus status,
    required DateTime createdAt,
    DateTime? preferredDate,
    String? comment,
  }) = _MeasureRequest;
}
