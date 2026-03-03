import '../../../domain/models/discount/discount_create_request.dart';
import '../../../domain/models/discount/discount_update_request.dart';
import '../../../domain/models/discount_scope/discount_scope.dart';
import '../../../domain/models/discount_type/discount_type.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../dto/discount/discount_create_request/discount_create_request_dto.dart';
import '../../dto/discount/discount_scope_dto.dart';
import '../../dto/discount/discount_type_dto.dart';
import '../../dto/discount/discount_update_request/discount_update_request_dto.dart';
import '../../dto/product/product_type_dto.dart';

class DiscountRequestMappers {
  static DiscountCreateRequestDto toCreateDto(DiscountCreateRequest from) =>
      DiscountCreateRequestDto(
        name: from.name,
        discountType: _toDtoType(from.discountType),
        value: from.value,
        scope: _toDtoScope(from.scope),
        startDate: from.startDate,
        endDate: from.endDate,
        productId: from.productId,
        categoryId: from.categoryId,
        productType: from.productType != null ? _toDtoProductType(from.productType!) : null,
        priority: from.priority,
        isActive: from.isActive,
      );

  static DiscountUpdateRequestDto toUpdateDto(DiscountUpdateRequest from) =>
      DiscountUpdateRequestDto(
        name: from.name,
        discountType: from.discountType != null ? _toDtoType(from.discountType!) : null,
        value: from.value,
        scope: from.scope != null ? _toDtoScope(from.scope!) : null,
        productId: from.productId,
        categoryId: from.categoryId,
        productType: from.productType != null ? _toDtoProductType(from.productType!) : null,
        startDate: from.startDate,
        endDate: from.endDate,
        priority: from.priority,
        isActive: from.isActive,
      );

  static DiscountTypeDto _toDtoType(DiscountType domain) =>
      DiscountTypeDto.values.byName(domain.name);

  static DiscountScopeDto _toDtoScope(DiscountScope domain) =>
      DiscountScopeDto.values.byName(domain.name);

  static ProductTypeDto _toDtoProductType(ProductType domain) =>
      ProductTypeDto.values.byName(domain.name);
}
