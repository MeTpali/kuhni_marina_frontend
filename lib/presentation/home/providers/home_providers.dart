import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/di.dart';
import '../../../domain/models/banner/banner.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/repositories/i_banners_repository.dart';
import '../../../domain/repositories/i_products_repository.dart';

/// Токен для запросов к API. Пока заглушка; при появлении авторизации — заменить.
final _apiTokenProvider = Provider<String>((ref) => '');

/// Список баннеров для главной страницы.
final homeBannersProvider =
    FutureProvider<List<Banner>>((ref) async {
  final token = ref.watch(_apiTokenProvider);
  final repo = getIt<IBannersRepository>();
  final result = await repo.getBanners(token);
  return result.when(
    success: (list) => list,
    error: (message) => throw Exception(message),
  );
});

/// Хиты продаж для главной.
final homeHitsProvider =
    FutureProvider<ProductCatalog>((ref) async {
  final token = ref.watch(_apiTokenProvider);
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductHits(
    token,
    pageSize: 8,
  );
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});

/// Новинки для главной.
final homeNewProductsProvider =
    FutureProvider<ProductCatalog>((ref) async {
  final token = ref.watch(_apiTokenProvider);
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductNew(
    token,
    pageSize: 8,
  );
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});
