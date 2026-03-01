import 'package:frontend/data/dto/measure_request/measure_request_create_request/measure_request_create_request_dto.dart';
import 'package:frontend/data/dto/measure_request/measure_request_status_enum.dart';
import 'package:frontend/data/dto/measure_request/measure_request_status_update_request/measure_request_status_update_request_dto.dart';
import 'package:frontend/data/dto/measure_request/measure_request_update_request/measure_request_update_request_dto.dart';
import 'package:frontend/domain/models/measure_request/measure_request_create_request.dart';
import 'package:frontend/domain/models/measure_request/measure_request_status_update_request.dart';
import 'package:frontend/domain/models/measure_request/measure_request_update_request.dart';
import 'package:frontend/domain/models/measure_request_status/measure_request_status.dart';

class MeasureRequestRequestMappers {
  static MeasureRequestCreateRequestDto toCreateDto(
    MeasureRequestCreateRequest from,
  ) {
    return MeasureRequestCreateRequestDto(
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      preferredDate: from.preferredDate,
      comment: from.comment,
      status: from.status != null ? _toDtoStatus(from.status!) : null,
    );
  }

  static MeasureRequestUpdateRequestDto toUpdateDto(
    MeasureRequestUpdateRequest from,
  ) {
    return MeasureRequestUpdateRequestDto(
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      preferredDate: from.preferredDate,
      comment: from.comment,
      status: from.status != null ? _toDtoStatus(from.status!) : null,
    );
  }

  static MeasureRequestStatusUpdateRequestDto toStatusUpdateDto(
    MeasureRequestStatusUpdateRequest from,
  ) {
    return MeasureRequestStatusUpdateRequestDto(
      status: _toDtoStatus(from.status),
    );
  }

  static MeasureRequestStatusEnum _toDtoStatus(MeasureRequestStatus domain) {
    return MeasureRequestStatusEnum.values.byName(domain.name);
  }
}
