import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_error_dto.freezed.dart';
part 'validation_error_dto.g.dart';

@freezed
class ValidationErrorDto with _$ValidationErrorDto {
  const factory ValidationErrorDto({
    @JsonKey(name: 'loc') required List<Object> loc,
    @JsonKey(name: 'msg') required String msg,
    @JsonKey(name: 'type') required String type,
  }) = _ValidationErrorDto;

  factory ValidationErrorDto.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorDtoFromJson(json);
}
