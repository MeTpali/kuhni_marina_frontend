import '../../../domain/models/product/product_favorite_mutation.dart';
import '../../dto/product/product_favorite_mutation_response/product_favorite_mutation_response_dto.dart';
import '../i_mapper.dart';

class ProductFavoriteMutationMapper
    implements
        IMapper<ProductFavoriteMutationResponseDto, ProductFavoriteMutation> {
  @override
  ProductFavoriteMutation map(ProductFavoriteMutationResponseDto from) =>
      ProductFavoriteMutation(
        productId: from.productId,
        message: from.message,
      );
}
