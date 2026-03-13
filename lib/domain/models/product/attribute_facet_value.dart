import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_facet_value.freezed.dart';

@freezed
class AttributeFacetValue with _$AttributeFacetValue {
  const factory AttributeFacetValue({
    required String value,
    required int count,
  }) = _AttributeFacetValue;
}
