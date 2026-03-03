import '../../../domain/models/discount/discount.dart';
import '../../../domain/models/discount_scope/discount_scope.dart';
import '../../../domain/models/discount_type/discount_type.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../dto/discount/discount_response/discount_response_dto.dart';
import '../../dto/discount/discount_scope_dto.dart';
import '../../dto/discount/discount_type_dto.dart';
import '../i_mapper.dart';

class DiscountMapper implements IMapper<DiscountResponseDto, Discount> {
  @override
  Discount map(DiscountResponseDto from) => Discount(
        id: from.id,
        name: from.name,
        discountType: _toDomainDiscountType(from.discountType),
        value: from.value,
        scope: _toDomainScope(from.scope),
        startDate: from.startDate,
        endDate: from.endDate,
        isActive: from.isActive,
        createdAt: from.createdAt,
        productId: from.productId,
        categoryId: from.categoryId,
        productType: from.productType != null
            ? ProductType.fromName(from.productType!.name)
            : null,
        priority: from.priority,
        updatedAt: from.updatedAt,
      );

  static DiscountType _toDomainDiscountType(DiscountTypeDto dto) =>
      DiscountType.fromName(dto.name);

  static DiscountScope _toDomainScope(DiscountScopeDto dto) =>
      DiscountScope.fromName(dto.name);
}
