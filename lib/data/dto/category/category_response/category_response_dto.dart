import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_type_dto.dart';

part 'category_response_dto.freezed.dart';
part 'category_response_dto.g.dart';

@freezed
class CategoryResponseDto with _$CategoryResponseDto {
  const factory CategoryResponseDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'type') required CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryResponseDto;

  factory CategoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseDtoFromJson(json);
}
