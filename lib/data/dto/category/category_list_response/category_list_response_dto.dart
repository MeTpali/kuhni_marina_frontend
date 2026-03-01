import 'package:freezed_annotation/freezed_annotation.dart';
import '../category_tree_node/category_tree_node_dto.dart';

part 'category_list_response_dto.freezed.dart';
part 'category_list_response_dto.g.dart';

@freezed
class CategoryListResponseDto with _$CategoryListResponseDto {
  const factory CategoryListResponseDto({
    @JsonKey(name: 'items') required List<CategoryTreeNodeDto> items,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryListResponseDto;

  factory CategoryListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseDtoFromJson(json);
}
