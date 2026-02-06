import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_response.freezed.dart';
part 'project_product_response.g.dart';

@freezed
class ProjectProductResponse with _$ProjectProductResponse {
  const factory ProjectProductResponse({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductResponse;

  factory ProjectProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductResponseFromJson(json);
}
