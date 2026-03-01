import 'package:freezed_annotation/freezed_annotation.dart';
import '../validation_error/validation_error_dto.dart';

part 'http_validation_error_dto.freezed.dart';
part 'http_validation_error_dto.g.dart';

@freezed
class HTTPValidationErrorDto with _$HTTPValidationErrorDto {
  const factory HTTPValidationErrorDto({
    @JsonKey(name: 'detail') required List<ValidationErrorDto> detail,
  }) = _HTTPValidationErrorDto;

  factory HTTPValidationErrorDto.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorDtoFromJson(json);
}
