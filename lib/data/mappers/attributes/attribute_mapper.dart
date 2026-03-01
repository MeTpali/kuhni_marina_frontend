import 'package:frontend/data/dto/attribute/attribute_response/attribute_response_dto.dart';
import 'package:frontend/domain/models/attribute/attribute.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class AttributeMapper implements IMapper<AttributeResponseDto, Attribute> {
  @override
  Attribute map(AttributeResponseDto from) {
    return Attribute(
      id: from.id,
      name: from.name,
      unit: from.unit,
    );
  }
}
