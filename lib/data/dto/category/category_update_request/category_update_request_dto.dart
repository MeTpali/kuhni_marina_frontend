import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type_dto.dart';

part 'category_update_request_dto.freezed.dart';
part 'category_update_request_dto.g.dart';

@freezed
class CategoryUpdateRequestDto with _$CategoryUpdateRequestDto {
  const factory CategoryUpdateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _CategoryUpdateRequestDto;

  factory CategoryUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateRequestDtoFromJson(json);
}
