import '../../../domain/models/product/product_image.dart';
import '../../dto/product/product_image_response/product_image_response_dto.dart';
import '../i_mapper.dart';

class ProductImageMapper
    implements IMapper<ProductImageResponseDto, ProductImage> {
  @override
  ProductImage map(ProductImageResponseDto from) => ProductImage(
      id: from.id,
      imageUrl: from.imageUrl,
      isMain: from.isMain,
    );
}
