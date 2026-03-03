import '../../core/entities/result/result.dart';
import '../models/discount/discount.dart';
import '../models/discount/discount_catalog.dart';
import '../models/discount/discount_create_request.dart';
import '../models/discount/discount_update_request.dart';
import '../models/discount_scope/discount_scope.dart';
import '../models/discount_type/discount_type.dart';
import '../models/product_type/product_type.dart';

/// Репозиторий скидок.
abstract class IDiscountsRepository {
  /// Список скидок с пагинацией и фильтрами.
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
  });

  /// Создать скидку.
  Future<Result<Discount>> createDiscount(
    String token,
    DiscountCreateRequest request,
  );

  /// Скидка по id.
  Future<Result<Discount>> getDiscountById(String token, int discountId);

  /// Обновить скидку.
  Future<Result<Discount>> updateDiscount(
    String token,
    int discountId,
    DiscountUpdateRequest request,
  );

  /// Удалить скидку.
  Future<Result<bool>> deleteDiscount(String token, int discountId);
}
