import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_delete_response.freezed.dart';
part 'project_product_delete_response.g.dart';

@freezed
class ProjectProductDeleteResponse with _$ProjectProductDeleteResponse {
  const factory ProjectProductDeleteResponse({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductDeleteResponse;

  factory ProjectProductDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductDeleteResponseFromJson(json);
}
