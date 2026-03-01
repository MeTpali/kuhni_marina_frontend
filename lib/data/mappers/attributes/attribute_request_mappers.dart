import 'package:frontend/data/dto/attribute/attribute_create_request/attribute_create_request_dto.dart';
import 'package:frontend/data/dto/attribute/attribute_update_request/attribute_update_request_dto.dart';
import 'package:frontend/domain/models/attribute/attribute_create_request.dart';
import 'package:frontend/domain/models/attribute/attribute_update_request.dart';

class AttributeRequestMappers {
  static AttributeCreateRequestDto toCreateDto(AttributeCreateRequest from) {
    return AttributeCreateRequestDto(name: from.name, unit: from.unit);
  }

  static AttributeUpdateRequestDto toUpdateDto(AttributeUpdateRequest from) {
    return AttributeUpdateRequestDto(name: from.name, unit: from.unit);
  }
}
