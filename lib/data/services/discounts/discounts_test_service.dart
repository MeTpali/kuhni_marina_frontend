import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/discount/discount_create_request/discount_create_request_dto.dart';
import '../../dto/discount/discount_delete_response/discount_delete_response_dto.dart';
import '../../dto/discount/discount_list_response/discount_list_response_dto.dart';
import '../../dto/discount/discount_response/discount_response_dto.dart';
import '../../dto/discount/discount_scope_dto.dart';
import '../../dto/discount/discount_type_dto.dart';
import '../../dto/discount/discount_update_request/discount_update_request_dto.dart';
import '../../dto/product/product_type_dto.dart';

/// Тестовый сервис скидок с моковыми данными.
class DiscountsTestService {
  DiscountsTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    DiscountResponseDto(
      id: 1,
      name: 'Скидка на кухни 10%',
      discountType: DiscountTypeDto.PERCENTAGE,
      value: '10',
      scope: DiscountScopeDto.TYPE,
      startDate: '2024-01-01T00:00:00Z',
      endDate: '2024-12-31T23:59:59Z',
      isActive: true,
      createdAt: '2024-01-01T10:00:00Z',
      productId: null,
      categoryId: null,
      productType: ProductTypeDto.KITCHEN,
      priority: 0,
      updatedAt: null,
      message: null,
    ),
    DiscountResponseDto(
      id: 2,
      name: 'Фиксированная скидка 5000',
      discountType: DiscountTypeDto.FIXED,
      value: '5000',
      scope: DiscountScopeDto.ALL,
      startDate: '2024-03-01T00:00:00Z',
      endDate: '2024-03-31T23:59:59Z',
      isActive: true,
      createdAt: '2024-02-15T12:00:00Z',
      productId: null,
      categoryId: null,
      productType: null,
      priority: 1,
      updatedAt: null,
      message: null,
    ),
  ];

  static const _mockListResponse = DiscountListResponseDto(
    items: _mockItems,
    total: 2,
    page: 1,
    pageSize: 20,
    totalPages: 1,
    message: null,
  );

  Future<ResponseResult<DiscountListResponseDto>> getDiscounts({
    int? page,
    int? pageSize,
    bool? includeInactive,
    DiscountScopeDto? scope,
    DiscountTypeDto? discountType,
    int? productId,
    int? categoryId,
    ProductTypeDto? productType,
    bool? isActive,
    String? sortBy,
    String? sortOrder,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<DiscountResponseDto>> createDiscount({
    required DiscountCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(
      DiscountResponseDto(
        id: 99,
        name: request.name,
        discountType: request.discountType,
        value: request.value.toString(),
        scope: request.scope,
        startDate: request.startDate,
        endDate: request.endDate,
        isActive: request.isActive,
        createdAt: DateTime.now().toIso8601String(),
        productId: request.productId,
        categoryId: request.categoryId,
        productType: request.productType,
        priority: request.priority,
        updatedAt: null,
        message: null,
      ),
    );
  }

  Future<ResponseResult<DiscountResponseDto>> getDiscountById({
    required int discountId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final list = _mockItems.where((e) => e.id == discountId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
          DiscountResponseDto(
            id: discountId,
            name: 'Скидка $discountId',
            discountType: DiscountTypeDto.PERCENTAGE,
            value: '0',
            scope: DiscountScopeDto.ALL,
            startDate: '2024-01-01T00:00:00Z',
            endDate: '2024-12-31T23:59:59Z',
            isActive: true,
            createdAt: '2024-01-01T10:00:00Z',
            productId: null,
            categoryId: null,
            productType: null,
            priority: 0,
            updatedAt: null,
            message: null,
          ),
    );
  }

  Future<ResponseResult<DiscountResponseDto>> updateDiscount({
    required int discountId,
    required DiscountUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    final existing = _mockItems.where((e) => e.id == discountId).firstOrNull;
    return ResponseResult.success(
      DiscountResponseDto(
        id: discountId,
        name: request.name ?? existing?.name ?? 'Скидка $discountId',
        discountType:
            request.discountType ??
            existing?.discountType ??
            DiscountTypeDto.PERCENTAGE,
        value: request.value?.toString() ?? existing?.value ?? '0',
        scope: request.scope ?? existing?.scope ?? DiscountScopeDto.ALL,
        startDate:
            request.startDate ?? existing?.startDate ?? '2024-01-01T00:00:00Z',
        endDate: request.endDate ?? existing?.endDate ?? '2024-12-31T23:59:59Z',
        isActive: request.isActive ?? existing?.isActive ?? true,
        createdAt: existing?.createdAt ?? '2024-01-01T10:00:00Z',
        productId: request.productId ?? existing?.productId,
        categoryId: request.categoryId ?? existing?.categoryId,
        productType: request.productType ?? existing?.productType,
        priority: request.priority ?? existing?.priority ?? 0,
        updatedAt: DateTime.now().toIso8601String(),
        message: null,
      ),
    );
  }

  Future<ResponseResult<DiscountDeleteResponseDto>> deleteDiscount({
    required int discountId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      DiscountDeleteResponseDto(discountId: discountId, message: null),
    );
  }
}
