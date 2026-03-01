import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_delete_response_dto.freezed.dart';
part 'banner_delete_response_dto.g.dart';

@freezed
class BannerDeleteResponseDto with _$BannerDeleteResponseDto {
  const factory BannerDeleteResponseDto({
    @JsonKey(name: 'banner_id') required int bannerId,
    @JsonKey(name: 'message') String? message,
  }) = _BannerDeleteResponseDto;

  factory BannerDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDeleteResponseDtoFromJson(json);
}
