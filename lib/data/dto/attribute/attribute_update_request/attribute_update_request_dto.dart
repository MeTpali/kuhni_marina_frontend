import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_update_request_dto.freezed.dart';
part 'attribute_update_request_dto.g.dart';

@freezed
class AttributeUpdateRequestDto with _$AttributeUpdateRequestDto {
  const factory AttributeUpdateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
  }) = _AttributeUpdateRequestDto;

  factory AttributeUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeUpdateRequestDtoFromJson(json);
}
