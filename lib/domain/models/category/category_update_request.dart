import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_type/category_type.dart';

part 'category_update_request.freezed.dart';

/// Параметры обновления категории.
@freezed
class CategoryUpdateRequest with _$CategoryUpdateRequest {
  const factory CategoryUpdateRequest({
    required String name,
    required CategoryType type,
    String? slug,
    int? parentId,
    bool? isActive,
    String? imageUrl,
  }) = _CategoryUpdateRequest;
}
