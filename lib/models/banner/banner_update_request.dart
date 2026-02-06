import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_update_request.freezed.dart';
part 'banner_update_request.g.dart';

@freezed
class BannerUpdateRequest with _$BannerUpdateRequest {
  const factory BannerUpdateRequest({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @Default(0) @JsonKey(name: 'position') int position,
    @Default(true) @JsonKey(name: 'is_active') bool? isActive,
  }) = _BannerUpdateRequest;

  factory BannerUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$BannerUpdateRequestFromJson(json);
}
