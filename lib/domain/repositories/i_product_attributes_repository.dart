import '../../core/entities/result/result.dart';
import '../models/product_attribute/product_attribute_create_request.dart';
import '../models/product_attribute/product_attribute_item.dart';
import '../models/product_attribute/product_attribute_update_request.dart';

abstract class IProductAttributesRepository {
  Future<Result<List<ProductAttributeItem>>> getProductAttributes(String token);

  Future<Result<ProductAttributeItem>> getProductAttributeById(
    String token,
    int productId,
    int attributeId,
  );

  Future<Result<ProductAttributeItem>> createProductAttribute(
    String token,
    ProductAttributeCreateRequest request,
  );

  Future<Result<ProductAttributeItem>> updateProductAttribute(
    String token,
    int productId,
    int attributeId,
    ProductAttributeUpdateRequest request,
  );
}
