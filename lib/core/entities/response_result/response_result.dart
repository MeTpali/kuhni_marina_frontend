import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_result.freezed.dart';

@freezed
class ResponseResult<T> with _$ResponseResult<T> {
  const factory ResponseResult.success(T data) = Success<T>;
  const factory ResponseResult.error(ResponseError error) = Error<T>;
}

@freezed
class ResponseError with _$ResponseError {
  const factory ResponseError.network(String message) = NetworkError;
  const factory ResponseError.server(String message, int? statusCode) =
      ServerError;
  const factory ResponseError.unexpected(String message) = UnexpectedError;
}
