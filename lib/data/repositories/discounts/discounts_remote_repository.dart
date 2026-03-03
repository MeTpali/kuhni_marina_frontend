import '../../../core/entities/result/result.dart';
import '../../../domain/models/discount/discount.dart';
import '../../../domain/models/discount/discount_catalog.dart';
import '../../../domain/models/discount/discount_create_request.dart';
import '../../../domain/models/discount/discount_update_request.dart';
import '../../../domain/models/discount_scope/discount_scope.dart';
import '../../../domain/models/discount_type/discount_type.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../../domain/repositories/i_discounts_repository.dart';
import '../../dto/discount/discount_scope_dto.dart';
import '../../dto/discount/discount_type_dto.dart';
import '../../dto/product/product_type_dto.dart';
import '../../mappers/discounts/discount_catalog_mapper.dart';
import '../../mappers/discounts/discount_mapper.dart';
import '../../mappers/discounts/discount_request_mappers.dart';
import '../../services/discounts/discounts_remote_service.dart';
import '../../utils/response_error_mapper.dart';

class DiscountsRemoteRepository implements IDiscountsRepository {
  DiscountsRemoteRepository({required DiscountsRemoteService service})
      : _service = service;

  final DiscountsRemoteService _service;
  final DiscountMapper _mapper = DiscountMapper();
  final DiscountCatalogMapper _catalogMapper = DiscountCatalogMapper();

  @override
  Future<Result<DiscountCatalog>> getDiscounts(
    String token, {
    int? page,
    int? pageSize,
    bool? includeInactive,
    DiscountScope? scope,
    DiscountType? discountType,
    int? productId,
    int? categoryId,
    ProductType? productType,
    bool? isActive,
    String? sortBy,
    String? sortOrder,
  }) async {
    final response = await _service.getDiscounts(
      token: token,
      page: page,
      pageSize: pageSize,
      includeInactive: includeInactive,
      scope: scope != null ? DiscountScopeDto.values.byName(scope.name) : null,
      discountType: discountType != null
          ? DiscountTypeDto.values.byName(discountType.name)
          : null,
      productId: productId,
      categoryId: categoryId,
      productType: productType != null
          ? ProductTypeDto.values.byName(productType.name)
          : null,
      isActive: isActive,
      sortBy: sortBy,
      sortOrder: sortOrder,
    );
    return response.when(
      success: (dto) => Result.success(_catalogMapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Discount>> createDiscount(
    String token,
    DiscountCreateRequest request,
  ) async {
    final dto = DiscountRequestMappers.toCreateDto(request);
    final response = await _service.createDiscount(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Discount>> getDiscountById(String token, int discountId) async {
    final response =
        await _service.getDiscountById(token: token, discountId: discountId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Discount>> updateDiscount(
    String token,
    int discountId,
    DiscountUpdateRequest request,
  ) async {
    final dto = DiscountRequestMappers.toUpdateDto(request);
    final response = await _service.updateDiscount(
      token: token,
      discountId: discountId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteDiscount(String token, int discountId) async {
    final response =
        await _service.deleteDiscount(token: token, discountId: discountId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
