import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type/category_type.dart';

part 'category_create_request.freezed.dart';
part 'category_create_request.g.dart';

@freezed
class CategoryCreateRequest with _$CategoryCreateRequest {
  const factory CategoryCreateRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
  }) = _CategoryCreateRequest;

  factory CategoryCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateRequestFromJson(json);
}
