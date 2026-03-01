import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_response_dto.freezed.dart';
part 'attribute_response_dto.g.dart';

@freezed
class AttributeResponseDto with _$AttributeResponseDto {
  const factory AttributeResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeResponseDto;

  factory AttributeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeResponseDtoFromJson(json);
}
