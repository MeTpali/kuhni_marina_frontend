import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_type/category_type.dart';

part 'category_create_request.freezed.dart';

/// Параметры создания категории (доменный вход use case / репозитория).
@freezed
class CategoryCreateRequest with _$CategoryCreateRequest {
  const factory CategoryCreateRequest({
    required String name,
    required CategoryType type,
    String? slug,
    int? parentId,
    String? imageUrl,
    @Default(true) bool isActive,
  }) = _CategoryCreateRequest;
}
