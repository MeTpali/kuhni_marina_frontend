import '../../core/entities/result/result.dart';
import '../models/product_attribute/product_attribute_create_request.dart';
import '../models/product_attribute/product_attribute_item.dart';
import '../models/product_attribute/product_attribute_update_request.dart';

abstract class IProductAttributesRepository {
  Future<Result<List<ProductAttributeItem>>> getProductAttributes();

  Future<Result<ProductAttributeItem>> getProductAttributeById(
    int productId,
    int attributeId,
  );

  Future<Result<ProductAttributeItem>> createProductAttribute(
    ProductAttributeCreateRequest request,
  );

  Future<Result<ProductAttributeItem>> updateProductAttribute(
    int productId,
    int attributeId,
    ProductAttributeUpdateRequest request,
  );
}
