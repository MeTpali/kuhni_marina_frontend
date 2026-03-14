import '../../core/entities/result/result.dart';
import '../models/category/category.dart';
import '../models/category/category_create_request.dart';
import '../models/category/category_tree_node.dart';
import '../models/category/category_update_request.dart';
import '../models/category_type/category_type.dart';

/// Репозиторий категорий каталога (порт для data-слоя).
abstract class ICategoriesRepository {
  /// Список категорий в виде дерева.
  Future<Result<List<CategoryTreeNode>>> getCategories();

  /// Список категорий по типу.
  Future<Result<List<CategoryTreeNode>>> getCategoriesByType(CategoryType type);

  /// Создать категорию.
  Future<Result<Category>> createCategory(CategoryCreateRequest request);

  /// Получить категорию по id.
  Future<Result<Category>> getCategoryById(int categoryId);

  /// Обновить категорию.
  Future<Result<Category>> updateCategory(
    int categoryId,
    CategoryUpdateRequest request,
  );

  /// Удалить категорию.
  Future<Result<bool>> deleteCategory(int categoryId);
}
