import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type/product_type.dart';

part 'product_create_request.freezed.dart';
part 'product_create_request.g.dart';

@freezed
class ProductCreateRequest with _$ProductCreateRequest {
  const factory ProductCreateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'type') required ProductType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @Default(false) @JsonKey(name: 'is_new') bool isNew,
    @Default(false) @JsonKey(name: 'is_hit') bool isHit,
    @Default([]) @JsonKey(name: 'attributes') List<Map<String, dynamic>> attributes,
    @Default([]) @JsonKey(name: 'images') List<Map<String, dynamic>> images,
  }) = _ProductCreateRequest;

  factory ProductCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateRequestFromJson(json);
}
