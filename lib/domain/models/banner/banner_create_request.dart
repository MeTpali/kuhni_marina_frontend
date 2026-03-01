import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_create_request.freezed.dart';

@freezed
class BannerCreateRequest with _$BannerCreateRequest {
  const factory BannerCreateRequest({
    required String title,
    required String imageUrl,
    String? linkUrl,
    @Default(0) int position,
    @Default(true) bool isActive,
  }) = _BannerCreateRequest;
}
