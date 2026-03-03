import '../../../domain/models/discount/discount_catalog.dart';
import '../../dto/discount/discount_list_response/discount_list_response_dto.dart';
import '../i_mapper.dart';
import 'discount_mapper.dart';

class DiscountCatalogMapper
    implements IMapper<DiscountListResponseDto, DiscountCatalog> {
  final DiscountMapper _discountMapper = DiscountMapper();

  @override
  DiscountCatalog map(DiscountListResponseDto from) => DiscountCatalog(
        items: from.items.map(_discountMapper.map).toList(),
        total: from.total,
        page: from.page,
        pageSize: from.pageSize,
        totalPages: from.totalPages,
      );
}
