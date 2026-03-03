import '../../../domain/models/product/product_discount_info.dart';
import '../../dto/product/product_discount_info/product_discount_info_dto.dart';
import '../i_mapper.dart';

class ProductDiscountInfoMapper
    implements IMapper<ProductDiscountInfoDto, ProductDiscountInfo> {
  @override
  ProductDiscountInfo map(ProductDiscountInfoDto from) => ProductDiscountInfo(
        discountPercent: from.discountPercent,
        discountAmount: from.discountAmount,
        finalPrice: from.finalPrice,
      );
}
