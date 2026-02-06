import 'package:freezed_annotation/freezed_annotation.dart';
import 'validation_error.dart';

part 'http_validation_error.freezed.dart';
part 'http_validation_error.g.dart';

@freezed
class HTTPValidationError with _$HTTPValidationError {
  const factory HTTPValidationError({
    @JsonKey(name: 'detail') required List<ValidationError> detail,
  }) = _HTTPValidationError;

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);
}
