import 'package:frontend/data/dto/measure_request/measure_request_response/measure_request_response_dto.dart';
import 'package:frontend/data/dto/measure_request/measure_request_status_enum.dart';
import 'package:frontend/domain/models/measure_request/measure_request.dart';
import 'package:frontend/domain/models/measure_request_status/measure_request_status.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class MeasureRequestMapper
    implements IMapper<MeasureRequestResponseDto, MeasureRequest> {
  @override
  MeasureRequest map(MeasureRequestResponseDto from) {
    return MeasureRequest(
      id: from.id,
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      status: _toDomainStatus(from.status),
      createdAt: from.createdAt,
      preferredDate: from.preferredDate,
      comment: from.comment,
    );
  }

  static MeasureRequestStatus _toDomainStatus(MeasureRequestStatusEnum dto) {
    return MeasureRequestStatus.fromName(dto.name);
  }
}
