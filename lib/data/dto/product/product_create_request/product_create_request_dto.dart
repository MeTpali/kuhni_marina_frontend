import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type_dto.dart';

part 'product_create_request_dto.freezed.dart';
part 'product_create_request_dto.g.dart';

@freezed
class ProductCreateRequestDto with _$ProductCreateRequestDto {
  const factory ProductCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default([])
    @JsonKey(name: 'attributes')
    List<Map<String, dynamic>> attributes,
    @Default([]) @JsonKey(name: 'images') List<Map<String, dynamic>> images,
  }) = _ProductCreateRequestDto;

  factory ProductCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateRequestDtoFromJson(json);
}
