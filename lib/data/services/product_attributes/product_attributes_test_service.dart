import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/product_attribute/product_attribute_create_request/product_attribute_create_request_dto.dart';
import '../../dto/product_attribute/product_attribute_list_response/product_attribute_list_response_dto.dart';
import '../../dto/product_attribute/product_attribute_response/product_attribute_response_dto.dart';
import '../../dto/product_attribute/product_attribute_update_request/product_attribute_update_request_dto.dart';

class ProductAttributesTestService {
  ProductAttributesTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    ProductAttributeResponseDto(
      productId: 1,
      attributeId: 10,
      value: 'Белый',
      message: null,
    ),
    ProductAttributeResponseDto(
      productId: 1,
      attributeId: 11,
      value: 'МДФ',
      message: null,
    ),
  ];

  Future<ResponseResult<ProductAttributeListResponseDto>> getProductAttributes({
    required String token,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 260));
    return const ResponseResult.success(
      ProductAttributeListResponseDto(items: _mockItems, message: null),
    );
  }

  Future<ResponseResult<ProductAttributeResponseDto>> getProductAttributeById({
    required String token,
    required int productId,
    required int attributeId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 220));
    final item = _mockItems.firstWhere(
      (e) => e.productId == productId && e.attributeId == attributeId,
      orElse: () => const ProductAttributeResponseDto(
        productId: 1,
        attributeId: 10,
        value: 'Белый',
        message: null,
      ),
    );
    return ResponseResult.success(item);
  }

  Future<ResponseResult<ProductAttributeResponseDto>> createProductAttribute({
    required String token,
    required ProductAttributeCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 260));
    return ResponseResult.success(
      ProductAttributeResponseDto(
        productId: request.productId,
        attributeId: request.attributeId,
        value: request.value,
        message: null,
      ),
    );
  }

  Future<ResponseResult<ProductAttributeResponseDto>> updateProductAttribute({
    required String token,
    required int productId,
    required int attributeId,
    required ProductAttributeUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 260));
    return ResponseResult.success(
      ProductAttributeResponseDto(
        productId: productId,
        attributeId: attributeId,
        value: request.value,
        message: null,
      ),
    );
  }
}
