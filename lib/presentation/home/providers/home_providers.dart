import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/di.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../../domain/repositories/i_products_repository.dart';

/// Список баннеров для главной страницы.
final homeBannersProvider =
    FutureProvider<List<Banner>>((ref) async {
  final repo = getIt<IBannersRepository>();
  final result = await repo.getBanners();
  return result.when(
    success: (list) => list,
    error: (message) => throw Exception(message),
  );
});

/// Хиты продаж для главной.
final homeHitsProvider =
    FutureProvider<ProductCatalog>((ref) async {
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductHits(pageSize: 8);
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});

/// Новинки для главной.
final homeNewProductsProvider =
    FutureProvider<ProductCatalog>((ref) async {
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductNew(pageSize: 8);
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});
