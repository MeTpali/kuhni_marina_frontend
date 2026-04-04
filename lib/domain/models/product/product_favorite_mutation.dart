import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_favorite_mutation.freezed.dart';

/// Результат добавления/удаления товара в избранном (ответ API).
@freezed
class ProductFavoriteMutation with _$ProductFavoriteMutation {
  const factory ProductFavoriteMutation({
    required int productId,
    String? message,
  }) = _ProductFavoriteMutation;
}
