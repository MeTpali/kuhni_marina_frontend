import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type_dto.dart';

part 'product_update_request_dto.freezed.dart';
part 'product_update_request_dto.g.dart';

@freezed
class ProductUpdateRequestDto with _$ProductUpdateRequestDto {
  const factory ProductUpdateRequestDto({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'type') ProductTypeDto? type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @JsonKey(name: 'is_new') bool? isNew,
    @JsonKey(name: 'is_hit') bool? isHit,
    @JsonKey(name: 'attributes') List<Map<String, dynamic>>? attributes,
    @JsonKey(name: 'images') List<Map<String, dynamic>>? images,
  }) = _ProductUpdateRequestDto;

  factory ProductUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateRequestDtoFromJson(json);
}
