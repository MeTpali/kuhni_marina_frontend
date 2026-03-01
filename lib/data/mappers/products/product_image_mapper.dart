import 'package:frontend/data/dto/product/product_image_response/product_image_response_dto.dart';
import 'package:frontend/domain/models/product/product_image.dart';
import 'package:frontend/data/mappers/i_mapper.dart';

class ProductImageMapper
    implements IMapper<ProductImageResponseDto, ProductImage> {
  @override
  ProductImage map(ProductImageResponseDto from) {
    return ProductImage(
      id: from.id,
      imageUrl: from.imageUrl,
      isMain: from.isMain,
    );
  }
}
