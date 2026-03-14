import '../../../core/entities/result/result.dart';
import '../../../domain/models/measure_request/measure_request.dart';
import '../../../domain/models/measure_request/measure_request_create_request.dart';
import '../../../domain/models/measure_request/measure_request_status_update_request.dart';
import '../../../domain/models/measure_request/measure_request_update_request.dart';
import '../../../domain/models/measure_request_status/measure_request_status.dart';
import '../../../domain/repositories/i_measure_requests_repository.dart';
import '../../dto/measure_request/measure_request_status_enum.dart';
import '../../mappers/measure_requests/measure_request_mapper.dart';
import '../../mappers/measure_requests/measure_request_request_mappers.dart';
import '../../services/measure_requests/measure_requests_test_service.dart';
import '../../utils/response_error_mapper.dart';

/// Тестовый репозиторий заявок на замер на основе [MeasureRequestsTestService].
class MeasureRequestsTestRepository implements IMeasureRequestsRepository {
  MeasureRequestsTestRepository({required MeasureRequestsTestService service})
    : _service = service;

  final MeasureRequestsTestService _service;
  final MeasureRequestMapper _mapper = MeasureRequestMapper();

  @override
  Future<Result<List<MeasureRequest>>> getMeasureRequests({
    MeasureRequestStatus? status,
  }) async {
    final response = await _service.getMeasureRequests(
      status: status != null ? _toDtoStatus(status) : null,
    );
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<MeasureRequest>> createMeasureRequest(
    MeasureRequestCreateRequest request,
  ) async {
    final dto = MeasureRequestRequestMappers.toCreateDto(request);
    final response = await _service.createMeasureRequest(request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<MeasureRequest>> getMeasureRequestById(int measureRequestId) async {
    final response = await _service.getMeasureRequestById(
      measureRequestId: measureRequestId,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<MeasureRequest>> updateMeasureRequest(
    int measureRequestId,
    MeasureRequestUpdateRequest request,
  ) async {
    final dto = MeasureRequestRequestMappers.toUpdateDto(request);
    final response = await _service.updateMeasureRequest(
      measureRequestId: measureRequestId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<MeasureRequest>> updateMeasureRequestStatus(
    int measureRequestId,
    MeasureRequestStatusUpdateRequest request,
  ) async {
    final dto = MeasureRequestRequestMappers.toStatusUpdateDto(request);
    final response = await _service.updateMeasureRequestStatus(
      measureRequestId: measureRequestId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  MeasureRequestStatusEnum _toDtoStatus(MeasureRequestStatus status) =>
      MeasureRequestStatusEnum.values.byName(status.name);
}
