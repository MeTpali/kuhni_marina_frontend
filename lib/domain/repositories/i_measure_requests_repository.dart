import '../../core/entities/result/result.dart';
import '../models/measure_request/measure_request.dart';
import '../models/measure_request/measure_request_create_request.dart';
import '../models/measure_request/measure_request_status_update_request.dart';
import '../models/measure_request/measure_request_update_request.dart';
import '../models/measure_request_status/measure_request_status.dart';

/// Репозиторий заявок на замер.
abstract class IMeasureRequestsRepository {
  Future<Result<List<MeasureRequest>>> getMeasureRequests(
    String token, {
    MeasureRequestStatus? status,
  });

  Future<Result<MeasureRequest>> createMeasureRequest(
    String token,
    MeasureRequestCreateRequest request,
  );

  Future<Result<MeasureRequest>> getMeasureRequestById(
    String token,
    int measureRequestId,
  );

  Future<Result<MeasureRequest>> updateMeasureRequest(
    String token,
    int measureRequestId,
    MeasureRequestUpdateRequest request,
  );

  Future<Result<MeasureRequest>> updateMeasureRequestStatus(
    String token,
    int measureRequestId,
    MeasureRequestStatusUpdateRequest request,
  );
}
