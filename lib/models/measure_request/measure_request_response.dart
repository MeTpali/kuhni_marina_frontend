import 'package:freezed_annotation/freezed_annotation.dart';
import '../measure_request_status/measure_request_status.dart';

part 'measure_request_response.freezed.dart';
part 'measure_request_response.g.dart';

@freezed
class MeasureRequestResponse with _$MeasureRequestResponse {
  const factory MeasureRequestResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') required MeasureRequestStatus status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  }) = _MeasureRequestResponse;

  factory MeasureRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$MeasureRequestResponseFromJson(json);
}
