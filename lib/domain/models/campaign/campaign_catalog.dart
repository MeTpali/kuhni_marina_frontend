import 'package:freezed_annotation/freezed_annotation.dart';

import 'campaign.dart';

part 'campaign_catalog.freezed.dart';

/// Список акций с пагинацией.
@freezed
class CampaignCatalog with _$CampaignCatalog {
  const factory CampaignCatalog({
    required List<Campaign> items,
    required int total,
    required int page,
    required int pageSize,
    required int totalPages,
  }) = _CampaignCatalog;
}
