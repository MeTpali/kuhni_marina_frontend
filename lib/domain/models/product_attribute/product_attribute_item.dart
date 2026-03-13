import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute_item.freezed.dart';

@freezed
class ProductAttributeItem with _$ProductAttributeItem {
  const factory ProductAttributeItem({
    required int productId,
    required int attributeId,
    required String value,
  }) = _ProductAttributeItem;
}
