import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_delete_response.freezed.dart';
part 'banner_delete_response.g.dart';

@freezed
class BannerDeleteResponse with _$BannerDeleteResponse {
  const factory BannerDeleteResponse({
    @JsonKey(name: 'banner_id') required int bannerId,
    @JsonKey(name: 'message') String? message,
  }) = _BannerDeleteResponse;

  factory BannerDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerDeleteResponseFromJson(json);
}
