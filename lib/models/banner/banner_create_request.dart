import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_create_request.freezed.dart';
part 'banner_create_request.g.dart';

@freezed
class BannerCreateRequest with _$BannerCreateRequest {
  const factory BannerCreateRequest({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @Default(0) @JsonKey(name: 'position') int position,
    @Default(true) @JsonKey(name: 'is_active') bool? isActive,
  }) = _BannerCreateRequest;

  factory BannerCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$BannerCreateRequestFromJson(json);
}
