import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/category/category_create_request/category_create_request_dto.dart';
import '../../dto/category/category_delete_response/category_delete_response_dto.dart';
import '../../dto/category/category_list_response/category_list_response_dto.dart';
import '../../dto/category/category_response/category_response_dto.dart';
import '../../dto/category/category_tree_node/category_tree_node_dto.dart';
import '../../dto/category/category_type_dto.dart';
import '../../dto/category/category_update_request/category_update_request_dto.dart';

/// Тестовый сервис категорий с моковыми данными для разработки и тестов.
class CategoriesTestService {
  CategoriesTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockTree = [
    CategoryTreeNodeDto(
      id: 1,
      name: 'Кухни',
      slug: 'kuhni',
      type: CategoryTypeDto.KITCHEN,
      parentId: null,
      isActive: true,
      children: [
        CategoryTreeNodeDto(
          id: 2,
          name: 'Угловые кухни',
          slug: 'uglovye-kuhni',
          type: CategoryTypeDto.KITCHEN,
          parentId: 1,
          isActive: true,
          children: [],
        ),
        CategoryTreeNodeDto(
          id: 3,
          name: 'Прямые кухни',
          slug: 'pryamye-kuhni',
          type: CategoryTypeDto.KITCHEN,
          parentId: 1,
          isActive: true,
          children: [],
        ),
      ],
    ),
    CategoryTreeNodeDto(
      id: 4,
      name: 'Шкафы',
      slug: 'shkafy',
      type: CategoryTypeDto.FURNITURE,
      parentId: null,
      isActive: true,
      children: [],
    ),
  ];

  static final _mockListResponse =
      CategoryListResponseDto(items: _mockTree, message: null);

  Future<ResponseResult<CategoryListResponseDto>> getCategories({
    required String token,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 400));
    return ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<CategoryListResponseDto>> getCategoriesByType({
    required String token,
    required CategoryTypeDto categoryType,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    final filtered = _mockTree
        .where((n) => n.type == categoryType)
        .toList();
    return ResponseResult.success(
      CategoryListResponseDto(items: filtered, message: null),
    );
  }

  Future<ResponseResult<CategoryResponseDto>> createCategory({
    required String token,
    required CategoryCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(CategoryResponseDto(
      id: 99,
      name: request.name,
      slug: request.slug ?? request.name.toLowerCase().replaceAll(' ', '-'),
      type: request.type,
      parentId: request.parentId,
      isActive: request.isActive,
      message: null,
    ));
  }

  Future<ResponseResult<CategoryResponseDto>> getCategoryById({
    required String token,
    required int categoryId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    return ResponseResult.success(CategoryResponseDto(
      id: categoryId,
      name: 'Категория $categoryId',
      slug: 'category-$categoryId',
      type: CategoryTypeDto.KITCHEN,
      parentId: categoryId > 1 ? 1 : null,
      isActive: true,
      message: null,
    ));
  }

  Future<ResponseResult<CategoryResponseDto>> updateCategory({
    required String token,
    required int categoryId,
    required CategoryUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 350));
    return ResponseResult.success(CategoryResponseDto(
      id: categoryId,
      name: request.name,
      slug: request.slug ?? request.name.toLowerCase().replaceAll(' ', '-'),
      type: request.type,
      parentId: request.parentId,
      isActive: request.isActive ?? true,
      message: null,
    ));
  }

  Future<ResponseResult<CategoryDeleteResponseDto>> deleteCategory({
    required String token,
    required int categoryId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      CategoryDeleteResponseDto(categoryId: categoryId, message: null),
    );
  }
}
