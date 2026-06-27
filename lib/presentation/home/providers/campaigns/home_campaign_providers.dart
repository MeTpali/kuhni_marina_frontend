import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/campaign/campaign.dart';
import '../../../../domain/models/product/product_catalog.dart';
import '../../../../domain/repositories/i_campaigns_repository.dart';
import '../../../../domain/repositories/i_products_repository.dart';

/// Акции для главной (только активные, отсортированы по приоритету).
final homeCampaignsProvider = FutureProvider<List<Campaign>>((ref) async {
  final repo = getIt<ICampaignsRepository>();
  final result = await repo.getCampaigns(
    pageSize: 50,
    includeInactive: false,
  );
  return result.when(
    success: (catalog) {
      final list = List<Campaign>.from(catalog.items)
        ..sort((a, b) => b.priority.compareTo(a.priority));
      return list;
    },
    error: (message) => throw Exception(message),
  );
});

/// Товары акции для главной (каталог с фильтром по id акции).
final homeCampaignProductsProvider =
    FutureProvider.family<ProductCatalog, int>((ref, campaignId) async {
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductCatalog(
    campaignId: campaignId,
    pageSize: 8,
  );
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});
