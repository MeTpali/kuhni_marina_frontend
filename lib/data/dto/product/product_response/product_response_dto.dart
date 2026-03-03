import 'package:freezed_annotation/freezed_annotation.dart';

import '../../category/category_response/category_response_dto.dart';
import '../product_attribute_response/product_attribute_response_dto.dart';
import '../product_discount_info/product_discount_info_dto.dart';
import '../product_image_response/product_image_response_dto.dart';
import '../product_type_dto.dart';

part 'product_response_dto.freezed.dart';
part 'product_response_dto.g.dart';

@freezed
class ProductResponseDto with _$ProductResponseDto {
  const factory ProductResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductTypeDto type,
    @JsonKey(name: 'category') required CategoryResponseDto category,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([])
    @JsonKey(name: 'attributes')
    List<ProductAttributeResponseDto> attributes,
    @Default([]) @JsonKey(name: 'images') List<ProductImageResponseDto> images,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'discount') ProductDiscountInfoDto? discount,
    @JsonKey(name: 'message') String? message,
  }) = _ProductResponseDto;

  factory ProductResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseDtoFromJson(json);
}
