import '../../../core/entities/result/result.dart';
import '../../../domain/models/product/product.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/product/product_create_request.dart';
import '../../../domain/models/product/product_search_suggestion.dart';
import '../../../domain/models/product/product_update_request.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../../domain/repositories/i_products_repository.dart';
import '../../mappers/products/product_catalog_mapper.dart';
import '../../mappers/products/product_mapper.dart';
import '../../mappers/products/product_request_mappers.dart';
import '../../mappers/products/product_suggestion_item_mapper.dart';
import '../../services/products/products_test_service.dart';
import '../../utils/response_error_mapper.dart';

/// Тестовый репозиторий товаров на основе [ProductsTestService].
class ProductsTestRepository implements IProductsRepository {
  ProductsTestRepository({required ProductsTestService service})
    : _service = service;

  final ProductsTestService _service;
  final ProductMapper _productMapper = ProductMapper();
  final ProductCatalogMapper _catalogMapper = ProductCatalogMapper();
  final ProductSuggestionItemMapper _suggestionMapper =
      ProductSuggestionItemMapper();

  @override
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
  }) async {
    final response = await _service.getProductCatalog(
      token: token,
      page: page,
      pageSize: pageSize,
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
      isHit: isHit,
      isNew: isNew,
      hasDiscount: hasDiscount,
      campaignId: campaignId,
      type: type?.name,
      search: search,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<ProductSearchSuggestion>>> getSearchSuggestions(
    String token,
    String text, {
    ProductType? type,
    int? limit,
  }) async {
    final response = await _service.getSearchSuggestions(
      token: token,
      text: text,
      type: type?.name,
      limit: limit,
    );
    return response.when(
      success: (dto) =>
          Result.success(dto.items.map(_suggestionMapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductCatalog>> getProductHits(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductHits(
      token: token,
      page: page,
      pageSize: pageSize,
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductCatalog>> getProductNew(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductNew(
      token: token,
      page: page,
      pageSize: pageSize,
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductCatalog>> getProductDiscounts(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductDiscounts(
      token: token,
      page: page,
      pageSize: pageSize,
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<int>>> getProductIds(
    String token, {
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductIds(
      token: token,
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
    );
    return response.when(
      success: (dto) => Result.success(dto.productIds),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> getProductById(String token, int productId) async {
    final response = await _service.getProductById(
      token: token,
      productId: productId,
    );
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> createProduct(
    String token,
    ProductCreateRequest request,
  ) async {
    final dto = ProductRequestMappers.toCreateDto(request);
    final response = await _service.createProduct(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> updateProduct(
    String token,
    int productId,
    ProductUpdateRequest request,
  ) async {
    final dto = ProductRequestMappers.toUpdateDto(request);
    final response = await _service.updateProduct(
      token: token,
      productId: productId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteProduct(String token, int productId) async {
    final response = await _service.deleteProduct(
      token: token,
      productId: productId,
    );
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
