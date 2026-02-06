import 'package:freezed_annotation/freezed_annotation.dart';
import 'project_product_response.dart';

part 'project_product_list_response.freezed.dart';
part 'project_product_list_response.g.dart';

@freezed
class ProjectProductListResponse with _$ProjectProductListResponse {
  const factory ProjectProductListResponse({
    @JsonKey(name: 'items') required List<ProjectProductResponse> items,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectProductListResponse;

  factory ProjectProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductListResponseFromJson(json);
}
