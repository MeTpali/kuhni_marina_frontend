import '../../../domain/models/measure_request/measure_request.dart';
import '../../../domain/models/measure_request_status/measure_request_status.dart';
import '../../dto/measure_request/measure_request_response/measure_request_response_dto.dart';
import '../../dto/measure_request/measure_request_status_enum.dart';
import '../i_mapper.dart';

class MeasureRequestMapper
    implements IMapper<MeasureRequestResponseDto, MeasureRequest> {
  @override
  MeasureRequest map(MeasureRequestResponseDto from) => MeasureRequest(
      id: from.id,
      fullName: from.fullName,
      phone: from.phone,
      address: from.address,
      status: _toDomainStatus(from.status),
      createdAt: from.createdAt,
      preferredDate: from.preferredDate,
      comment: from.comment,
    );

  static MeasureRequestStatus _toDomainStatus(MeasureRequestStatusEnum dto) => MeasureRequestStatus.fromName(dto.name);
}
