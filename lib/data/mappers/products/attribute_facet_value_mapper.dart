import '../../../domain/models/product/attribute_facet_value.dart';
import '../../dto/product/attribute_facet_value/attribute_facet_value_dto.dart';
import '../i_mapper.dart';

class AttributeFacetValueMapper
    implements IMapper<AttributeFacetValueDto, AttributeFacetValue> {
  @override
  AttributeFacetValue map(AttributeFacetValueDto from) => AttributeFacetValue(
        value: from.value,
        count: from.count,
      );
}
