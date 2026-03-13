import 'package:dio/dio.dart';

import '../../../../core/entities/response_result/response_result.dart';
import '../../../../core/utils/dio.dart';
import '../../dto/product/product_catalog_response/product_catalog_response_dto.dart';
import '../../dto/product/product_create_request/product_create_request_dto.dart';
import '../../dto/product/product_delete_response/product_delete_response_dto.dart';
import '../../dto/product/product_id_list_response/product_id_list_response_dto.dart';
import '../../dto/product/product_response/product_response_dto.dart';
import '../../dto/product/product_search_suggestions_response/product_search_suggestions_response_dto.dart';
import '../../dto/product/product_update_request/product_update_request_dto.dart';

class ProductsRemoteService {
  final Dio _dio;
  const ProductsRemoteService(this._dio);

  static const String _path = '/api/v1/products';

  Future<ResponseResult<ProductCatalogResponseDto>> getProductCatalog({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
    bool? isHit,
    bool? isNew,
    bool? hasDiscount,
    int? campaignId,
    String? type,
    String? search,
  }) async {
    try {
      final queryParams = _catalogQueryParams(
        page: page,
        pageSize: pageSize,
        categoryIds: categoryIds,
        attributeFilters: attributeFilters,
      );
      if (isHit != null) queryParams['is_hit'] = isHit;
      if (isNew != null) queryParams['is_new'] = isNew;
      if (hasDiscount != null) queryParams['has_discount'] = hasDiscount;
      if (campaignId != null) queryParams['campaign_id'] = campaignId;
      if (type != null) queryParams['type'] = type;
      if (search != null && search.isNotEmpty) queryParams['search'] = search;

      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/catalog',
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductCatalogResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductCatalogResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductCatalogResponseDto>> getProductHits({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async => _getProductCatalogPage(
    token: token,
    path: '$_path/hits',
    page: page,
    pageSize: pageSize,
    categoryIds: categoryIds,
    attributeFilters: attributeFilters,
  );

  Future<ResponseResult<ProductCatalogResponseDto>> getProductNew({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async => _getProductCatalogPage(
    token: token,
    path: '$_path/new',
    page: page,
    pageSize: pageSize,
    categoryIds: categoryIds,
    attributeFilters: attributeFilters,
  );

  Future<ResponseResult<ProductCatalogResponseDto>> getProductDiscounts({
    required String token,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async => _getProductCatalogPage(
    token: token,
    path: '$_path/discounts',
    page: page,
    pageSize: pageSize,
    categoryIds: categoryIds,
    attributeFilters: attributeFilters,
  );

  Future<ResponseResult<ProductSearchSuggestionsResponseDto>> getSearchSuggestions({
    required String token,
    required String text,
    String? type,
    int? limit,
  }) async {
    try {
      final queryParams = <String, dynamic>{'text': text};
      if (type != null) queryParams['type'] = type;
      if (limit != null) queryParams['limit'] = limit;

      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/search/suggestions',
        queryParameters: queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductSearchSuggestionsResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductSearchSuggestionsResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductIdListResponseDto>> getProductIds({
    required String token,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (categoryIds != null && categoryIds.isNotEmpty) {
        queryParams['category_ids'] = categoryIds;
      }
      if (attributeFilters != null) {
        queryParams['attribute_filters'] = attributeFilters;
      }

      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/ids',
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductIdListResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductIdListResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductResponseDto>> getProductById({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductResponseDto>> createProduct({
    required String token,
    required ProductCreateRequestDto request,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        _path,
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        return ResponseResult.success(
          ProductResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductResponseDto>> updateProduct({
    required String token,
    required int productId,
    required ProductUpdateRequestDto request,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/$productId',
        data: request.toJson(),
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductResponseDto>(e);
    }
  }

  Future<ResponseResult<ProductDeleteResponseDto>> deleteProduct({
    required String token,
    required int productId,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/$productId',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductDeleteResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductDeleteResponseDto>(e);
    }
  }

  Map<String, dynamic> _catalogQueryParams({
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) {
    final queryParams = <String, dynamic>{};
    if (page != null) queryParams['page'] = page;
    if (pageSize != null) queryParams['page_size'] = pageSize;
    if (categoryIds != null && categoryIds.isNotEmpty) {
      queryParams['category_ids'] = categoryIds;
    }
    if (attributeFilters != null) {
      queryParams['attribute_filters'] = attributeFilters;
    }
    return queryParams;
  }

  Future<ResponseResult<ProductCatalogResponseDto>> _getProductCatalogPage({
    required String token,
    required String path,
    int? page,
    int? pageSize,
    List<int>? categoryIds,
    String? attributeFilters,
  }) async {
    try {
      final queryParams = _catalogQueryParams(
        page: page,
        pageSize: pageSize,
        categoryIds: categoryIds,
        attributeFilters: attributeFilters,
      );
      final response = await _dio.get<Map<String, dynamic>>(
        path,
        queryParameters: queryParams.isEmpty ? null : queryParams,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          ProductCatalogResponseDto.fromJson(response.data!),
        );
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<ProductCatalogResponseDto>(e);
    }
  }
}
