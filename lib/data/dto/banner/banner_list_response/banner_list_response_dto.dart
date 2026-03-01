import 'package:freezed_annotation/freezed_annotation.dart';
import '../banner_response/banner_response_dto.dart';

part 'banner_list_response_dto.freezed.dart';
part 'banner_list_response_dto.g.dart';

@freezed
class BannerListResponseDto with _$BannerListResponseDto {
  const factory BannerListResponseDto({
    @JsonKey(name: 'items') required List<BannerResponseDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _BannerListResponseDto;

  factory BannerListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BannerListResponseDtoFromJson(json);
}
