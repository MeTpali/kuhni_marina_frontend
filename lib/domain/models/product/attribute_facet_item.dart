import 'package:freezed_annotation/freezed_annotation.dart';

import 'attribute_facet_value.dart';

part 'attribute_facet_item.freezed.dart';

@freezed
class AttributeFacetItem with _$AttributeFacetItem {
  const factory AttributeFacetItem({
    required int attributeId,
    required String attributeName,
    String? unit,
    @Default([]) List<AttributeFacetValue> values,
  }) = _AttributeFacetItem;
}
