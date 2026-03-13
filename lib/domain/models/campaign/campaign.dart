import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign.freezed.dart';

/// Доменная сущность акции (маркетинговой кампании).
@freezed
class Campaign with _$Campaign {
  const factory Campaign({
    required int id,
    required String name,
    required String startDate,
    required String endDate,
    required String createdAt,
    String? slug,
    String? description,
    String? bannerImageUrl,
    String? landingUrl,
    String? badgeText,
    @Default(true) bool isActive,
    @Default(0) int priority,
    String? updatedAt,
  }) = _Campaign;
}
