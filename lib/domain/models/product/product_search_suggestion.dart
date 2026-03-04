import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_discount_info.dart';

part 'product_search_suggestion.freezed.dart';

/// Элемент подсказки поиска: id, название, картинка, описание, цена, скидка.
@freezed
class ProductSearchSuggestion with _$ProductSearchSuggestion {
  const factory ProductSearchSuggestion({
    required int id,
    required String name,
    String? image,
    String? description,
    String? price,
    ProductDiscountInfo? discount,
  }) = _ProductSearchSuggestion;
}
