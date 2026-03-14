import '../../../core/entities/result/result.dart';
import '../../../domain/models/product_attribute/product_attribute_create_request.dart';
import '../../../domain/models/product_attribute/product_attribute_item.dart';
import '../../../domain/models/product_attribute/product_attribute_update_request.dart';
import '../../../domain/repositories/i_product_attributes_repository.dart';
import '../../mappers/product_attributes/product_attribute_item_mapper.dart';
import '../../mappers/product_attributes/product_attribute_request_mappers.dart';
import '../../services/product_attributes/product_attributes_test_service.dart';
import '../../utils/response_error_mapper.dart';

class ProductAttributesTestRepository implements IProductAttributesRepository {
  ProductAttributesTestRepository({
    required ProductAttributesTestService service,
  }) : _service = service;

  final ProductAttributesTestService _service;
  final ProductAttributeItemMapper _mapper = ProductAttributeItemMapper();

  @override
  Future<Result<List<ProductAttributeItem>>> getProductAttributes() async {
    final response = await _service.getProductAttributes();
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductAttributeItem>> getProductAttributeById(
    int productId,
    int attributeId,
  ) async {
    final response = await _service.getProductAttributeById(
      productId: productId,
      attributeId: attributeId,
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductAttributeItem>> createProductAttribute(
    ProductAttributeCreateRequest request,
  ) async {
    final response = await _service.createProductAttribute(
      request: ProductAttributeRequestMappers.toCreateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<ProductAttributeItem>> updateProductAttribute(
    int productId,
    int attributeId,
    ProductAttributeUpdateRequest request,
  ) async {
    final response = await _service.updateProductAttribute(
      productId: productId,
      attributeId: attributeId,
      request: ProductAttributeRequestMappers.toUpdateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}
