import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_type/product_type.dart';

part 'product_create_request.freezed.dart';

/// Параметры создания товара.
@freezed
class ProductCreateRequest with _$ProductCreateRequest {
  const factory ProductCreateRequest({
    required String name,
    required int categoryId,
    required ProductType type,
    String? slug,
    String? description,
    Object? price,
    @Default(false) bool isNew,
    @Default(false) bool isHit,
    @Default([]) List<Map<String, dynamic>> attributes,
    @Default([]) List<Map<String, dynamic>> images,
  }) = _ProductCreateRequest;
}
