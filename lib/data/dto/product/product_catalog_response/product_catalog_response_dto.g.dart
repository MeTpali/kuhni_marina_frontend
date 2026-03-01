// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_catalog_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCatalogResponseDtoImpl _$$ProductCatalogResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductCatalogResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => ProductListItemResponseDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductCatalogResponseDtoImplToJson(
  _$ProductCatalogResponseDtoImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'page_size': instance.pageSize,
  'total_pages': instance.totalPages,
  'message': instance.message,
};
