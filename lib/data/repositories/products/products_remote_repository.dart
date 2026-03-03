import '../../../core/entities/result/result.dart';
import '../../../domain/models/product/product.dart';
import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/product/product_create_request.dart';
import '../../../domain/models/product/product_update_request.dart';
import '../../../domain/repositories/i_products_repository.dart';
import '../../mappers/products/product_catalog_mapper.dart';
import '../../mappers/products/product_mapper.dart';
import '../../mappers/products/product_request_mappers.dart';
import '../../services/products/products_remote_service.dart';
import '../../utils/response_error_mapper.dart';

class ProductsRemoteRepository implements IProductsRepository {
  ProductsRemoteRepository({required ProductsRemoteService service})
      : _service = service;

  final ProductsRemoteService _service;
  final ProductMapper _productMapper = ProductMapper();
  final ProductCatalogMapper _catalogMapper = ProductCatalogMapper();

  @override
  Future<Result<ProductCatalog>> getProductCatalog(
    String token, {
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    final response = await _service.getProductCatalog(
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
    final response =
        await _service.getProductById(token: token, productId: productId);
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
    final response =
        await _service.deleteProduct(token: token, productId: productId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
