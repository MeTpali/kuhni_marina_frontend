import '../../../core/entities/result/result.dart';
import '../../../domain/models/category/category.dart';
import '../../../domain/models/category/category_create_request.dart';
import '../../../domain/models/category/category_tree_node.dart';
import '../../../domain/models/category/category_update_request.dart';
import '../../../domain/models/category_type/category_type.dart';
import '../../../domain/repositories/i_categories_repository.dart';
import '../../dto/category/category_type_dto.dart';
import '../../mappers/categories/category_mapper.dart';
import '../../mappers/categories/category_request_mappers.dart';
import '../../mappers/categories/category_tree_node_mapper.dart';
import '../../services/categories/categories_remote_service.dart';
import '../../utils/response_error_mapper.dart';

class CategoriesRemoteRepository implements ICategoriesRepository {
  CategoriesRemoteRepository({required CategoriesRemoteService service})
      : _service = service;

  final CategoriesRemoteService _service;
  final CategoryMapper _categoryMapper = CategoryMapper();
  final CategoryTreeNodeMapper _treeNodeMapper = CategoryTreeNodeMapper();

  @override
  Future<Result<List<CategoryTreeNode>>> getCategories() async {
    final response = await _service.getCategories();
    return response.when(
      success: (dto) =>
          Result.success(dto.items.map(_treeNodeMapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<CategoryTreeNode>>> getCategoriesByType(CategoryType type) async {
    final response = await _service.getCategoriesByType(
      categoryType: _toDtoType(type),
    );
    return response.when(
      success: (dto) =>
          Result.success(dto.items.map(_treeNodeMapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> createCategory(CategoryCreateRequest request) async {
    final dto = CategoryRequestMappers.toCreateDto(request);
    final response = await _service.createCategory(request: dto);
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> getCategoryById(int categoryId) async {
    final response = await _service.getCategoryById(categoryId: categoryId);
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> updateCategory(
    int categoryId,
    CategoryUpdateRequest request,
  ) async {
    final dto = CategoryRequestMappers.toUpdateDto(request);
    final response = await _service.updateCategory(
      categoryId: categoryId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteCategory(int categoryId) async {
    final response = await _service.deleteCategory(categoryId: categoryId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  CategoryTypeDto _toDtoType(CategoryType type) => CategoryTypeDto.values.byName(type.name);
}
