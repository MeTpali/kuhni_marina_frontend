import '../../core/entities/result/result.dart';
import '../models/product/product.dart';
import '../models/product/product_catalog.dart';
import '../models/product/product_create_request.dart';
import '../models/product/product_search_suggestion.dart';
import '../models/product/product_update_request.dart';
import '../models/product_type/product_type.dart';

/// Репозиторий товаров каталога.
abstract class IProductsRepository {
  /// Каталог товаров с пагинацией и фильтрами.
  Future<Result<ProductCatalog>> getProductCatalog(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    bool? isHit,
    bool? isNew,
    bool? hasDiscount,
    int? campaignId,
    ProductType? type,
    String? search,
  });

  /// Подсказки поиска по товарам.
  Future<Result<List<ProductSearchSuggestion>>> getSearchSuggestions(
    String token,
    String text, {
    ProductType? type,
    int? limit,
  });

  /// Хиты продаж (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductHits(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  });

  /// Новинки (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductNew(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  });

  /// Товары со скидкой (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductDiscounts(
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
