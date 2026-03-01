import 'package:freezed_annotation/freezed_annotation.dart';
import '../attribute_response/attribute_response_dto.dart';

part 'attribute_list_response_dto.freezed.dart';
part 'attribute_list_response_dto.g.dart';

@freezed
class AttributeListResponseDto with _$AttributeListResponseDto {
  const factory AttributeListResponseDto({
    @JsonKey(name: 'items') required List<AttributeResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _AttributeListResponseDto;

  factory AttributeListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeListResponseDtoFromJson(json);
}
