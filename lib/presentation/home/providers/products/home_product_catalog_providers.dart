import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/product/product_catalog.dart';
import '../../../../domain/models/product_type/product_type.dart';
import '../../../../domain/repositories/i_products_repository.dart';

/// Хиты продаж по типу товара.
final homeProductHitsProvider =
    FutureProvider.family<ProductCatalog, ProductType>((ref, type) async {
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductHits(pageSize: 10, type: type);
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});

/// Новинки по типу товара.
final homeProductNewProvider =
    FutureProvider.family<ProductCatalog, ProductType>((ref, type) async {
  final repo = getIt<IProductsRepository>();
  final result = await repo.getProductNew(pageSize: 10, type: type);
  return result.when(
    success: (catalog) => catalog,
    error: (message) => throw Exception(message),
  );
});
