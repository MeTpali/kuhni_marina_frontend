import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/di.dart';
import '../../../domain/models/background_image/background_image.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../../domain/models/project/project_catalog.dart';
import '../../../domain/repositories/i_background_images_repository.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../../domain/repositories/i_campaigns_repository.dart';
import '../../../domain/repositories/i_categories_repository.dart';
import '../../../domain/repositories/i_products_repository.dart';
import '../../../domain/repositories/i_projects_repository.dart';
import '../notifiers/home_categories_notifier.dart';
import '../notifiers/home_categories_state.dart';
import '../notifiers/home_search_notifier.dart';
import '../notifiers/home_search_state.dart';

abstract class HomeDi {
  /// Фоновые изображения для анимированного фона на главной.
  static final homeBackgroundImagesProvider =
      FutureProvider<List<BackgroundImage>>((ref) async {
        final repo = getIt<IBackgroundImagesRepository>();
        final result = await repo.getBackgroundImages();
        return result.when(
          success: (list) => list.where((item) => item.isActive).toList(),
          error: (message) => throw Exception(message),
        );
      });

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
      pageSize: 10,
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
      pageSize: 10,
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
      pageSize: 10,
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
      pageSize: 10,
      type: ProductType.furniture,
    );
    return result.when(
      success: (catalog) => catalog,
      error: (message) => throw Exception(message),
    );
  });

  /// Портфолио — реализованные проекты.
  static final homePortfolioProvider = FutureProvider<ProjectCatalog>((
    ref,
  ) async {
    final repo = getIt<IProjectsRepository>();
    final result = await repo.getProjects(pageSize: 10);
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

  /// Категории каталога для блока на главной ([CategoryType.kitchen] / [CategoryType.furniture]).
  static final categoriesProvider = StateNotifierProvider.family<
      HomeCategoriesNotifier,
      HomeCategoriesState,
      CategoryType>((ref, categoryType) {
    final notifier = HomeCategoriesNotifier(
      categoriesRepository: getIt<ICategoriesRepository>(),
      categoryType: categoryType,
    );
    unawaited(notifier.load());
    return notifier;
  });

  /// Модальный поиск по каталогу на главной.
  static final homeSearchProvider =
      StateNotifierProvider.autoDispose<HomeSearchNotifier, HomeSearchState>(
    (ref) => HomeSearchNotifier(
      productsRepository: getIt<IProductsRepository>(),
    ),
  );
}
