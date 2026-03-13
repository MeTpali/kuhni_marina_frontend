import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_facet_value_dto.freezed.dart';
part 'attribute_facet_value_dto.g.dart';

@freezed
class AttributeFacetValueDto with _$AttributeFacetValueDto {
  const factory AttributeFacetValueDto({
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'count') required int count,
  }) = _AttributeFacetValueDto;

  factory AttributeFacetValueDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeFacetValueDtoFromJson(json);
}
