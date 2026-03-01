import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_update_request.freezed.dart';

@freezed
class BannerUpdateRequest with _$BannerUpdateRequest {
  const factory BannerUpdateRequest({
    required String title,
    required String imageUrl,
    String? linkUrl,
    @Default(0) int position,
    @Default(true) bool isActive,
  }) = _BannerUpdateRequest;
}
