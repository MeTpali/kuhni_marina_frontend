import '../../core/entities/response_result/response_result.dart';
import '../../core/utils/errors_texts.dart';

/// Преобразование [ResponseError] в сообщение для пользователя.
String responseErrorToMessage(ResponseError error) => switch (error) {
    NetworkError(:final message) => message.isNotEmpty ? message : ErrorText.somethingWentWrongErrorText,
    ServerError(:final message, :final statusCode) => () {
        if (statusCode == 401) return ErrorText.unauthorizedErrorText;
        return message.isNotEmpty ? message : ErrorText.somethingWentWrongErrorText;
      }(),
    UnexpectedError(:final message) => message.isNotEmpty ? message : ErrorText.somethingWentWrongErrorText,
    _ => ErrorText.somethingWentWrongErrorText,
  };
