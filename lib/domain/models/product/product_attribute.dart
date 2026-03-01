import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attribute.freezed.dart';

/// Значение атрибута у товара.
@freezed
class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    required int attributeId,
    required String attributeName,
    required String value,
    String? attributeUnit,
  }) = _ProductAttribute;
}
