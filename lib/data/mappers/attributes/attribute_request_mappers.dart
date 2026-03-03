import '../../../domain/models/attribute/attribute_create_request.dart';
import '../../../domain/models/attribute/attribute_update_request.dart';
import '../../dto/attribute/attribute_create_request/attribute_create_request_dto.dart';
import '../../dto/attribute/attribute_update_request/attribute_update_request_dto.dart';

class AttributeRequestMappers {
  static AttributeCreateRequestDto toCreateDto(AttributeCreateRequest from) => AttributeCreateRequestDto(name: from.name, unit: from.unit);

  static AttributeUpdateRequestDto toUpdateDto(AttributeUpdateRequest from) => AttributeUpdateRequestDto(name: from.name, unit: from.unit);
}
