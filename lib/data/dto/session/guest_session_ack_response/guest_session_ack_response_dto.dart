import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_session_ack_response_dto.freezed.dart';
part 'guest_session_ack_response_dto.g.dart';

@freezed
class GuestSessionAckResponseDto with _$GuestSessionAckResponseDto {
  const factory GuestSessionAckResponseDto({
    @Default(true) @JsonKey(name: 'ok') bool ok,
  }) = _GuestSessionAckResponseDto;

  factory GuestSessionAckResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GuestSessionAckResponseDtoFromJson(json);
}
