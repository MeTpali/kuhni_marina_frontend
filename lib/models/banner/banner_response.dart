import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_response.freezed.dart';
part 'banner_response.g.dart';

@freezed
class BannerResponse with _$BannerResponse {
  const factory BannerResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @Default(0) @JsonKey(name: 'position') int position,
    @Default(true) @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'message') String? message,
  }) = _BannerResponse;

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}
