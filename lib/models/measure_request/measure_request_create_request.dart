import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status/measure_request_status.dart';

part 'measure_request_create_request.freezed.dart';
part 'measure_request_create_request.g.dart';

@freezed
class MeasureRequestCreateRequest with _$MeasureRequestCreateRequest {
  const factory MeasureRequestCreateRequest({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatus? status,
  }) = _MeasureRequestCreateRequest;

  factory MeasureRequestCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestCreateRequestFromJson(json);
}
