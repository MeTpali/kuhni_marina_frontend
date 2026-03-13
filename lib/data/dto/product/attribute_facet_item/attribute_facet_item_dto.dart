import 'package:freezed_annotation/freezed_annotation.dart';

import '../attribute_facet_value/attribute_facet_value_dto.dart';

part 'attribute_facet_item_dto.freezed.dart';
part 'attribute_facet_item_dto.g.dart';

@freezed
class AttributeFacetItemDto with _$AttributeFacetItemDto {
  const factory AttributeFacetItemDto({
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'attribute_name') required String attributeName,
    @JsonKey(name: 'unit') String? unit,
    @Default([])
    @JsonKey(name: 'values')
    List<AttributeFacetValueDto> values,
  }) = _AttributeFacetItemDto;

  factory AttributeFacetItemDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeFacetItemDtoFromJson(json);
}
