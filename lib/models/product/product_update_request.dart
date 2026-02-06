import 'package:freezed_annotation/freezed_annotation.dart';
import '../product_type/product_type.dart';

part 'product_update_request.freezed.dart';
part 'product_update_request.g.dart';

@freezed
class ProductUpdateRequest with _$ProductUpdateRequest {
  const factory ProductUpdateRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'type') ProductType? type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @JsonKey(name: 'is_new') bool? isNew,
    @JsonKey(name: 'is_hit') bool? isHit,
    @JsonKey(name: 'attributes') List<Map<String, dynamic>>? attributes,
    @JsonKey(name: 'images') List<Map<String, dynamic>>? images,
  }) = _ProductUpdateRequest;

  factory ProductUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateRequestFromJson(json);
}
