import '../../../domain/models/product/attribute_facet_item.dart';
import '../../dto/product/attribute_facet_item/attribute_facet_item_dto.dart';
import '../i_mapper.dart';
import 'attribute_facet_value_mapper.dart';

class AttributeFacetItemMapper
    implements IMapper<AttributeFacetItemDto, AttributeFacetItem> {
  final AttributeFacetValueMapper _valueMapper = AttributeFacetValueMapper();

  @override
  AttributeFacetItem map(AttributeFacetItemDto from) => AttributeFacetItem(
        attributeId: from.attributeId,
        attributeName: from.attributeName,
        unit: from.unit,
        values: from.values.map(_valueMapper.map).toList(),
      );
}
