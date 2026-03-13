import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_create_request_dto.freezed.dart';
part 'banner_create_request_dto.g.dart';

@freezed
class BannerCreateRequestDto with _$BannerCreateRequestDto {
  const factory BannerCreateRequestDto({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @Default(0) @Default(0) @JsonKey(name: 'priority') int priority,
    @Default(true) @JsonKey(name: 'is_active') bool? isActive,
  }) = _BannerCreateRequestDto;

  factory BannerCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BannerCreateRequestDtoFromJson(json);
}
