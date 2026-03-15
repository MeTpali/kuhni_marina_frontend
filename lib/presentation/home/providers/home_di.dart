import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/di.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../../domain/repositories/i_campaigns_repository.dart';
import '../../../domain/repositories/i_products_repository.dart';

abstract class HomeDi {
  /// Список баннеров для главной страницы (отсортированы по приоритету [position]).
  static final homeBannersProvider = FutureProvider<List<Banner>>((ref) async {
    final repo = getIt<IBannersRepository>();
    final result = await repo.getBanners();
    return result.when(
      success: (list) {
        final sorted = List<Banner>.from(list)
          ..sort((a, b) => a.position.compareTo(b.position));
        return sorted;
      },
      error: (message) => throw Exception(message),
    );
  });

  /// Хиты продаж — кухни.
  static final homeHitsKitchensProvider = FutureProvider<ProductCatalog>((
    ref,
  ) async {
    final repo = getIt<IProductsRepository>();
    final result = await repo.getProductHits(
      pageSize: 8,
      type: ProductType.kitchen,
    );
    return result.when(
      success: (catalog) => catalog,
      error: (message) => throw Exception(message),
    );
  });

  /// Хиты продаж — мебель.
  static final homeHitsFurnitureProvider = FutureProvider<ProductCatalog>((
    ref,
  ) async {
    final repo = getIt<IProductsRepository>();
    final result = await repo.getProductHits(
      pageSize: 8,
      type: ProductType.furniture,
    );
    return result.when(
      success: (catalog) => catalog,
      error: (message) => throw Exception(message),
    );
  });

  /// Новинки — кухни.
  static final homeNewKitchensProvider = FutureProvider<ProductCatalog>((
    ref,
  ) async {
    final repo = getIt<IProductsRepository>();
    final result = await repo.getProductNew(
      pageSize: 8,
      type: ProductType.kitchen,
    );
    return result.when(
      success: (catalog) => catalog,
      error: (message) => throw Exception(message),
    );
  });

  /// Новинки — мебель.
  static final homeNewFurnitureProvider = FutureProvider<ProductCatalog>((
    ref,
  ) async {
    final repo = getIt<IProductsRepository>();
    final result = await repo.getProductNew(
      pageSize: 8,
      type: ProductType.furniture,
    );
    return result.when(
      success: (catalog) => catalog,
      error: (message) => throw Exception(message),
    );
  });

  /// Акции для главной (только активные, отсортированы по приоритету: выше приоритет — выше в списке).
  static final homeCampaignsProvider = FutureProvider<List<Campaign>>((
    ref,
  ) async {
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
  static final homeCampaignProductsProvider =
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
}
