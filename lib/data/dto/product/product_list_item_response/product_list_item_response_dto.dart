import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_discount_info/product_discount_info_dto.dart';
import '../product_type_dto.dart';

part 'product_list_item_response_dto.freezed.dart';
part 'product_list_item_response_dto.g.dart';

@freezed
class ProductListItemResponseDto with _$ProductListItemResponseDto {
  const factory ProductListItemResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductTypeDto type,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'price') String? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'main_image') String? mainImage,
    @JsonKey(name: 'discount') ProductDiscountInfoDto? discount,
  }) = _ProductListItemResponseDto;

  factory ProductListItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductListItemResponseDtoFromJson(json);
}
