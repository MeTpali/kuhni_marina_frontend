import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type/category_type.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'type') required CategoryType type,
    @JsonKey(name: 'parent_id') int? parentId,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
