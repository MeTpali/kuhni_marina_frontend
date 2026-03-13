import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/category/category_response/category_response_dto.dart';
import '../../dto/category/category_type_dto.dart';
import '../../dto/product/product_catalog_response/product_catalog_response_dto.dart';
import '../../dto/product/product_create_request/product_create_request_dto.dart';
import '../../dto/product/product_delete_response/product_delete_response_dto.dart';
import '../../dto/product/product_id_list_response/product_id_list_response_dto.dart';
import '../../dto/product/product_list_item_response/product_list_item_response_dto.dart';
import '../../dto/product/product_response/product_response_dto.dart';
import '../../dto/product/product_search_suggestions_response/product_search_suggestions_response_dto.dart';
import '../../dto/product/product_suggestion_item_response/product_suggestion_item_response_dto.dart';
import '../../dto/product/product_type_dto.dart';
import '../../dto/product/product_update_request/product_update_request_dto.dart';

/// Тестовый сервис товаров с моковыми данными.
class ProductsTestService {
  ProductsTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockCategory = CategoryResponseDto(
    id: 1,
    name: 'Кухни',
    slug: 'kuhni',
    type: CategoryTypeDto.KITCHEN,
    parentId: null,
    isActive: true,
    message: null,
  );

  static const _mockListItems = [
    ProductListItemResponseDto(
      id: 1,
      name: 'Кухня «Марина»',
      slug: 'kuhnya-marina',
      categoryId: 1,
      type: ProductTypeDto.KITCHEN,
      categoryName: 'Кухни',
      price: '150000',
      isNew: true,
      isHit: false,
      isActive: true,
      mainImage: 'https://example.com/img1.jpg',
    ),
    ProductListItemResponseDto(
      id: 2,
      name: 'Угловая кухня «Комфорт»',
      slug: 'uglovaya-kuhnya-komfort',
      categoryId: 1,
      type: ProductTypeDto.KITCHEN,
      categoryName: 'Кухни',
      price: '220000',
      isNew: false,
      isHit: true,
      isActive: true,
      mainImage: null,
    ),
  ];

  static const _mockCatalog = ProductCatalogResponseDto(
    items: _mockListItems,
    total: 2,
    page: 1,
    pageSize: 10,
    totalPages: 1,
    message: null,
  );

  static const _mockIdList = ProductIdListResponseDto(
    productIds: [1, 2],
    total: 2,
    message: null,
  );

  static const _mockSuggestionItems = [
    ProductSuggestionItemResponseDto(
      id: 1,
      name: 'Кухня «Марина»',
      image: 'https://example.com/img1.jpg',
      description: 'Кухня в современном стиле',
      price: '150000',
      discount: null,
    ),
    ProductSuggestionItemResponseDto(
      id: 2,
      name: 'Угловая кухня «Комфорт»',
      image: null,
      description: 'Угловая кухня с островом',
      price: '220000',
      discount: null,
    ),
  ];

  Future<ResponseResult<ProductCatalogResponseDto>> getProductCatalog({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    bool? isHit,
    bool? isNew,
    bool? hasDiscount,
    int? campaignId,
    String? type,
    String? search,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 400));
    return const ResponseResult.success(_mockCatalog);
  }

  Future<ResponseResult<ProductSearchSuggestionsResponseDto>> getSearchSuggestions({
    required String token,
    required String text,
    String? type,
    int? limit,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final count = (limit ?? 10).clamp(0, _mockSuggestionItems.length);
    return ResponseResult.success(ProductSearchSuggestionsResponseDto(
      items: _mockSuggestionItems.take(count).toList(),
      message: null,
    ));
  }

  Future<ResponseResult<ProductCatalogResponseDto>> getProductHits({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    final hitItems = _mockListItems.where((e) => e.isHit).toList();
    return ResponseResult.success(ProductCatalogResponseDto(
      items: hitItems,
      total: hitItems.length,
      page: page ?? 1,
      pageSize: pageSize ?? 10,
      totalPages: hitItems.isEmpty ? 1 : 1,
      message: null,
    ));
  }

  Future<ResponseResult<ProductCatalogResponseDto>> getProductNew({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    final newItems = _mockListItems.where((e) => e.isNew).toList();
    return ResponseResult.success(ProductCatalogResponseDto(
      items: newItems,
      total: newItems.length,
      page: page ?? 1,
      pageSize: pageSize ?? 10,
      totalPages: newItems.isEmpty ? 1 : 1,
      message: null,
    ));
  }

  Future<ResponseResult<ProductCatalogResponseDto>> getProductDiscounts({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return const ResponseResult.success(_mockCatalog);
  }

  Future<ResponseResult<ProductIdListResponseDto>> getProductIds({
    required String token,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockIdList);
  }

  Future<ResponseResult<ProductResponseDto>> getProductById({
    required String token,
    required int productId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(ProductResponseDto(
      id: productId,
      name: 'Товар $productId',
      categoryId: 1,
      type: ProductTypeDto.KITCHEN,
      category: _mockCategory,
      createdAt: '2024-01-15T10:00:00Z',
      slug: 'product-$productId',
      description: null,
      price: '0',
      isNew: false,
      isHit: false,
      isActive: true,
      attributes: const [],
      images: const [],
      updatedAt: null,
      message: null,
    ));
  }

  Future<ResponseResult<ProductResponseDto>> createProduct({
    required String token,
    required ProductCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(ProductResponseDto(
      id: 99,
      name: request.name,
      categoryId: request.categoryId,
      type: request.type,
      category: _mockCategory,
      createdAt: DateTime.now().toIso8601String(),
      slug: request.slug,
      description: request.description,
      price: request.price?.toString(),
      isNew: request.isNew,
      isHit: request.isHit,
      isActive: true,
      attributes: const [],
      images: const [],
      updatedAt: null,
      message: null,
    ));
  }

  Future<ResponseResult<ProductResponseDto>> updateProduct({
    required String token,
    required int productId,
    required ProductUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(ProductResponseDto(
      id: productId,
      name: request.name ?? 'Товар $productId',
      categoryId: request.categoryId ?? 1,
      type: request.type ?? ProductTypeDto.KITCHEN,
      category: _mockCategory,
      createdAt: '2024-01-15T10:00:00Z',
      slug: request.slug,
      description: request.description,
      price: request.price?.toString(),
      isNew: request.isNew ?? false,
      isHit: request.isHit ?? false,
      isActive: true,
      attributes: const [],
      images: const [],
      updatedAt: DateTime.now().toIso8601String(),
      message: null,
    ));
  }

  Future<ResponseResult<ProductDeleteResponseDto>> deleteProduct({
    required String token,
    required int productId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      ProductDeleteResponseDto(productId: productId, message: null),
    );
  }
}
