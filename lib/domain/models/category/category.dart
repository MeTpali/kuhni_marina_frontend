import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_type/category_type.dart';

part 'category.freezed.dart';

/// Доменная сущность категории каталога.
@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String slug,
    required CategoryType type,
    int? parentId,
    String? imageUrl,
    @Default(true) bool isActive,
  }) = _Category;
}
