import 'package:frontend/core/entities/result/result.dart';
import 'package:frontend/data/mappers/categories/category_mapper.dart';
import 'package:frontend/data/mappers/categories/category_request_mappers.dart';
import 'package:frontend/data/mappers/categories/category_tree_node_mapper.dart';
import 'package:frontend/data/services/categories/categories_remote_service.dart';
import 'package:frontend/data/utils/response_error_mapper.dart';
import 'package:frontend/domain/models/category/category.dart';
import 'package:frontend/domain/models/category/category_create_request.dart';
import 'package:frontend/domain/models/category/category_tree_node.dart';
import 'package:frontend/domain/models/category/category_update_request.dart';
import 'package:frontend/domain/models/category_type/category_type.dart';
import 'package:frontend/data/dto/category/category_type_dto.dart';
import 'package:frontend/domain/repositories/i_categories_repository.dart';

class CategoriesRemoteRepository implements ICategoriesRepository {
  CategoriesRemoteRepository({required CategoriesRemoteService service})
      : _service = service;

  final CategoriesRemoteService _service;
  final CategoryMapper _categoryMapper = CategoryMapper();
  final CategoryTreeNodeMapper _treeNodeMapper = CategoryTreeNodeMapper();

  @override
  Future<Result<List<CategoryTreeNode>>> getCategories(String token) async {
    final response = await _service.getCategories(token: token);
    return response.when(
      success: (dto) =>
          Result.success(dto.items.map(_treeNodeMapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<CategoryTreeNode>>> getCategoriesByType(
    String token,
    CategoryType type,
  ) async {
    final response = await _service.getCategoriesByType(
      token: token,
      categoryType: _toDtoType(type),
    );
    return response.when(
      success: (dto) =>
          Result.success(dto.items.map(_treeNodeMapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> createCategory(
    String token,
    CategoryCreateRequest request,
  ) async {
    final dto = CategoryRequestMappers.toCreateDto(request);
    final response = await _service.createCategory(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> getCategoryById(String token, int categoryId) async {
    final response =
        await _service.getCategoryById(token: token, categoryId: categoryId);
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Category>> updateCategory(
    String token,
    int categoryId,
    CategoryUpdateRequest request,
  ) async {
    final dto = CategoryRequestMappers.toUpdateDto(request);
    final response = await _service.updateCategory(
      token: token,
      categoryId: categoryId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_categoryMapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteCategory(String token, int categoryId) async {
    final response =
        await _service.deleteCategory(token: token, categoryId: categoryId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  CategoryTypeDto _toDtoType(CategoryType type) {
    return CategoryTypeDto.values.byName(type.name);
  }
}
