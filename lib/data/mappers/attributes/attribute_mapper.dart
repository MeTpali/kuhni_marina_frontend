import '../../../domain/models/attribute/attribute.dart';
import '../../dto/attribute/attribute_response/attribute_response_dto.dart';
import '../i_mapper.dart';

class AttributeMapper implements IMapper<AttributeResponseDto, Attribute> {
  @override
  Attribute map(AttributeResponseDto from) => Attribute(
      id: from.id,
      name: from.name,
      unit: from.unit,
    );
}
