import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_type/product_type.dart';

part 'product_update_request.freezed.dart';

/// Параметры обновления товара (все поля опциональны).
@freezed
class ProductUpdateRequest with _$ProductUpdateRequest {
  const factory ProductUpdateRequest({
    String? name,
    int? categoryId,
    ProductType? type,
    String? slug,
    String? description,
    Object? price,
    bool? isNew,
    bool? isHit,
    List<Map<String, dynamic>>? attributes,
    List<Map<String, dynamic>>? images,
  }) = _ProductUpdateRequest;
}
