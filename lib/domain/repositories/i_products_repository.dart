import '../../core/entities/result/result.dart';
import '../models/product/product.dart';
import '../models/product/product_catalog.dart';
import '../models/product/product_create_request.dart';
import '../models/product/product_favorite_mutation.dart';
import '../models/product/product_search_suggestion.dart';
import '../models/product/product_update_request.dart';
import '../models/product_type/product_type.dart';

/// Репозиторий товаров каталога.
abstract class IProductsRepository {
  /// Каталог товаров с пагинацией и фильтрами.
  Future<Result<ProductCatalog>> getProductCatalog({
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
    String text, {
    ProductType? type,
    int? limit,
  });

  /// Хиты продаж (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductHits({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    ProductType? type,
  });

  /// Новинки (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductNew({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    ProductType? type,
  });

  /// Товары со скидкой (с пагинацией и фильтрами).
  Future<Result<ProductCatalog>> getProductDiscounts({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    ProductType? type,
  });

  /// Список id товаров по фильтрам.
  Future<Result<List<int>>> getProductIds({
    List<int>? categoryIds,
    String? attributeFilters,
  });

  /// Товар по id.
  Future<Result<Product>> getProductById(int productId);

  /// Создать товар.
  Future<Result<Product>> createProduct(ProductCreateRequest request);

  /// Обновить товар.
  Future<Result<Product>> updateProduct(
    int productId,
    ProductUpdateRequest request,
  );

  /// Удалить товар.
  Future<Result<bool>> deleteProduct(int productId);

  /// Избранное текущей гостевой сессии (формат как у каталога).
  Future<Result<ProductCatalog>> getFavoriteProducts({
    int? page,
    int? pageSize,
  });

  /// Добавить товар в избранное.
  Future<Result<ProductFavoriteMutation>> addProductToFavorites(int productId);

  /// Убрать товар из избранного.
  Future<Result<ProductFavoriteMutation>> removeProductFromFavorites(
    int productId,
  );
}
