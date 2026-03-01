import 'package:frontend/core/entities/result/result.dart';
import 'package:frontend/domain/models/product/product.dart';
import 'package:frontend/domain/models/product/product_catalog.dart';
import 'package:frontend/domain/models/product/product_create_request.dart';
import 'package:frontend/domain/models/product/product_update_request.dart';

/// Репозиторий товаров каталога.
abstract class IProductsRepository {
  /// Каталог товаров с пагинацией и фильтрами.
  Future<Result<ProductCatalog>> getProductCatalog(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  });

  /// Список id товаров по фильтрам.
  Future<Result<List<int>>> getProductIds(
    String token, {
    List<int>? categoryIds,
    String? attributeFilters,
  });

  /// Товар по id.
  Future<Result<Product>> getProductById(String token, int productId);

  /// Создать товар.
  Future<Result<Product>> createProduct(
    String token,
    ProductCreateRequest request,
  );

  /// Обновить товар.
  Future<Result<Product>> updateProduct(
    String token,
    int productId,
    ProductUpdateRequest request,
  );

  /// Удалить товар.
  Future<Result<bool>> deleteProduct(String token, int productId);
}
