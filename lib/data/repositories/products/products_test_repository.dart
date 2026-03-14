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
  }) async {
    final response = await _service.getProductCatalog(
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
    String text, {
    ProductType? type,
    int? limit,
  }) async {
    final response = await _service.getSearchSuggestions(
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
  Future<Result<ProductCatalog>> getProductHits({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductHits(
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
  Future<Result<ProductCatalog>> getProductNew({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductNew(
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
  Future<Result<ProductCatalog>> getProductDiscounts({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductDiscounts(
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
  Future<Result<List<int>>> getProductIds({
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductIds(
      categoryIds: categoryIds,
      attributeFilters: attributeFilters,
    );
    return response.when(
      success: (dto) => Result.success(dto.productIds),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> getProductById(int productId) async {
    final response = await _service.getProductById(productId: productId);
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> createProduct(ProductCreateRequest request) async {
    final dto = ProductRequestMappers.toCreateDto(request);
    final response = await _service.createProduct(request: dto);
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Product>> updateProduct(
    int productId,
    ProductUpdateRequest request,
  ) async {
    final dto = ProductRequestMappers.toUpdateDto(request);
    final response = await _service.updateProduct(
      productId: productId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_productMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteProduct(int productId) async {
    final response = await _service.deleteProduct(productId: productId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
