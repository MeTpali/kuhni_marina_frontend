import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_create_request_dto.freezed.dart';
part 'attribute_create_request_dto.g.dart';

@freezed
class AttributeCreateRequestDto with _$AttributeCreateRequestDto {
  const factory AttributeCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
  }) = _AttributeCreateRequestDto;

  factory AttributeCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeCreateRequestDtoFromJson(json);
}
