import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/measure_request/measure_request_create_request/measure_request_create_request_dto.dart';
import '../../dto/measure_request/measure_request_list_response/measure_request_list_response_dto.dart';
import '../../dto/measure_request/measure_request_response/measure_request_response_dto.dart';
import '../../dto/measure_request/measure_request_status_enum.dart';
import '../../dto/measure_request/measure_request_status_update_request/measure_request_status_update_request_dto.dart';
import '../../dto/measure_request/measure_request_update_request/measure_request_update_request_dto.dart';

/// Тестовый сервис заявок на замер с моковыми данными.
class MeasureRequestsTestService {
  MeasureRequestsTestService({this.addDelay = true});

  final bool addDelay;

  static final _mockItems = [
    MeasureRequestResponseDto(
      id: 1,
      fullName: 'Иванов Иван Иванович',
      phone: '+7 (999) 123-45-67',
      address: 'г. Москва, ул. Примерная, д. 1',
      status: MeasureRequestStatusEnum.NEW,
      createdAt: DateTime(2024, 2, 1, 10, 0),
      preferredDate: DateTime(2024, 2, 15),
      comment: 'Удобно после 18:00',
      message: null,
    ),
    MeasureRequestResponseDto(
      id: 2,
      fullName: 'Петрова Мария',
      phone: '+7 (999) 765-43-21',
      address: 'г. Санкт-Петербург, Невский пр., д. 10',
      status: MeasureRequestStatusEnum.IN_PROGRESS,
      createdAt: DateTime(2024, 2, 2, 14, 30),
      preferredDate: null,
      comment: null,
      message: null,
    ),
  ];

  Future<ResponseResult<MeasureRequestListResponseDto>> getMeasureRequests({
    required String token,
    MeasureRequestStatusEnum? status,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 400));
    final list = status == null
        ? _mockItems
        : _mockItems.where((e) => e.status == status).toList();
    return ResponseResult.success(
      MeasureRequestListResponseDto(items: list, message: null),
    );
  }

  Future<ResponseResult<MeasureRequestResponseDto>> createMeasureRequest({
    required String token,
    required MeasureRequestCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(MeasureRequestResponseDto(
      id: 99,
      fullName: request.fullName,
      phone: request.phone,
      address: request.address,
      status: request.status ?? MeasureRequestStatusEnum.NEW,
      createdAt: DateTime.now(),
      preferredDate: request.preferredDate,
      comment: request.comment,
      message: null,
    ));
  }

  Future<ResponseResult<MeasureRequestResponseDto>> getMeasureRequestById({
    required String token,
    required int measureRequestId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    final list =
        _mockItems.where((e) => e.id == measureRequestId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
          MeasureRequestResponseDto(
            id: measureRequestId,
            fullName: 'Заявка $measureRequestId',
            phone: '+7 (999) 000-00-00',
            address: 'Адрес',
            status: MeasureRequestStatusEnum.NEW,
            createdAt: DateTime.now(),
            preferredDate: null,
            comment: null,
            message: null,
          ),
    );
  }

  Future<ResponseResult<MeasureRequestResponseDto>> updateMeasureRequest({
    required String token,
    required int measureRequestId,
    required MeasureRequestUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(MeasureRequestResponseDto(
      id: measureRequestId,
      fullName: request.fullName ?? 'Заявка $measureRequestId',
      phone: request.phone ?? '',
      address: request.address ?? '',
      status: request.status ?? MeasureRequestStatusEnum.NEW,
      createdAt: DateTime.now(),
      preferredDate: request.preferredDate,
      comment: request.comment,
      message: null,
    ));
  }

  Future<ResponseResult<MeasureRequestResponseDto>>
      updateMeasureRequestStatusDto({
    required String token,
    required int measureRequestId,
    required MeasureRequestStatusUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(MeasureRequestResponseDto(
      id: measureRequestId,
      fullName: 'Заявка $measureRequestId',
      phone: '+7 (999) 000-00-00',
      address: 'Адрес',
      status: request.status,
      createdAt: DateTime.now(),
      preferredDate: null,
      comment: null,
      message: null,
    ));
  }
}
