import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type/category_type.dart';

part 'category_update_request.freezed.dart';
part 'category_update_request.g.dart';

@freezed
class CategoryUpdateRequest with _$CategoryUpdateRequest {
  const factory CategoryUpdateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _CategoryUpdateRequest;

  factory CategoryUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateRequestFromJson(json);
}
