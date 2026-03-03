import '../../../domain/models/measure_request/measure_request_create_request.dart';
import '../../../domain/models/measure_request/measure_request_status_update_request.dart';
import '../../../domain/models/measure_request/measure_request_update_request.dart';
import '../../../domain/models/measure_request_status/measure_request_status.dart';
import '../../dto/measure_request/measure_request_create_request/measure_request_create_request_dto.dart';
import '../../dto/measure_request/measure_request_status_enum.dart';
import '../../dto/measure_request/measure_request_status_update_request/measure_request_status_update_request_dto.dart';
import '../../dto/measure_request/measure_request_update_request/measure_request_update_request_dto.dart';

class MeasureRequestRequestMappers {
  static MeasureRequestCreateRequestDto toCreateDto(
    MeasureRequestCreateRequest from,
  ) => MeasureRequestCreateRequestDto(
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      preferredDate: from.preferredDate,
      comment: from.comment,
      status: from.status != null ? _toDtoStatus(from.status!) : null,
    );

  static MeasureRequestUpdateRequestDto toUpdateDto(
    MeasureRequestUpdateRequest from,
  ) => MeasureRequestUpdateRequestDto(
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      preferredDate: from.preferredDate,
      comment: from.comment,
      status: from.status != null ? _toDtoStatus(from.status!) : null,
    );

  static MeasureRequestStatusUpdateRequestDto toStatusUpdateDto(
    MeasureRequestStatusUpdateRequest from,
  ) => MeasureRequestStatusUpdateRequestDto(
      status: _toDtoStatus(from.status),
    );

  static MeasureRequestStatusEnum _toDtoStatus(MeasureRequestStatus domain) => MeasureRequestStatusEnum.values.byName(domain.name);
}
