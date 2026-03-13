import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_response_dto.freezed.dart';
part 'banner_response_dto.g.dart';

@freezed
class BannerResponseDto with _$BannerResponseDto {
  const factory BannerResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @Default(0) @JsonKey(name: 'priority') int priority,
    @Default(true) @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'message') String? message,
  }) = _BannerResponseDto;

  factory BannerResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseDtoFromJson(json);
}
