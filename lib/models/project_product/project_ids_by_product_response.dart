import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_ids_by_product_response.freezed.dart';
part 'project_ids_by_product_response.g.dart';

@freezed
class ProjectIdsByProductResponse with _$ProjectIdsByProductResponse {
  const factory ProjectIdsByProductResponse({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'project_ids') required List<int> projectIds,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectIdsByProductResponse;

  factory ProjectIdsByProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectIdsByProductResponseFromJson(json);
}
