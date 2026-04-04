import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type_dto.dart';

part 'category_create_request_dto.freezed.dart';
part 'category_create_request_dto.g.dart';

@freezed
class CategoryCreateRequestDto with _$CategoryCreateRequestDto {
  const factory CategoryCreateRequestDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
  }) = _CategoryCreateRequestDto;

  factory CategoryCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateRequestDtoFromJson(json);
}
