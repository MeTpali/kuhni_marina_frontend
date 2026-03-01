import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_delete_response_dto.freezed.dart';
part 'attribute_delete_response_dto.g.dart';

@freezed
class AttributeDeleteResponseDto with _$AttributeDeleteResponseDto {
  const factory AttributeDeleteResponseDto({
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeDeleteResponseDto;

  factory AttributeDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeDeleteResponseDtoFromJson(json);
}
