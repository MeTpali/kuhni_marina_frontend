import '../../../domain/models/product/product_search_suggestion.dart';
import '../../dto/product/product_suggestion_item_response/product_suggestion_item_response_dto.dart';
import '../i_mapper.dart';
import 'product_discount_info_mapper.dart';

class ProductSuggestionItemMapper
    implements IMapper<ProductSuggestionItemResponseDto, ProductSearchSuggestion> {
  final ProductDiscountInfoMapper _discountMapper = ProductDiscountInfoMapper();

  @override
  ProductSearchSuggestion map(ProductSuggestionItemResponseDto from) =>
      ProductSearchSuggestion(
        id: from.id,
        name: from.name,
        image: from.image,
        description: from.description,
        price: from.price,
        discount:
            from.discount != null ? _discountMapper.map(from.discount!) : null,
      );
}
