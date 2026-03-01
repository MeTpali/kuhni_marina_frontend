import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image.freezed.dart';

/// Изображение товара.
@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    required int id,
    required String imageUrl,
    @Default(false) bool isMain,
  }) = _ProductImage;
}
