import 'package:freezed_annotation/freezed_annotation.dart';
import 'banner_response.dart';

part 'banner_list_response.freezed.dart';
part 'banner_list_response.g.dart';

@freezed
class BannerListResponse with _$BannerListResponse {
  const factory BannerListResponse({
    @JsonKey(name: 'items') required List<BannerResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _BannerListResponse;

  factory BannerListResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerListResponseFromJson(json);
}
