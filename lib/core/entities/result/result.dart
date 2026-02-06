import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  /// Creates a successful [Result], completed with the specified [value].
  const factory Result.success(T value) = SuccessResult<T>;

  /// Creates an error [Result], completed with the specified [message].
  const factory Result.error(String message) = ErrorResult<T>;
}
