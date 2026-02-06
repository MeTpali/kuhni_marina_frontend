import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_product_create_request.freezed.dart';
part 'project_product_create_request.g.dart';

@freezed
class ProjectProductCreateRequest with _$ProjectProductCreateRequest {
  const factory ProjectProductCreateRequest({
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'product_id') required int productId,
  }) = _ProjectProductCreateRequest;

  factory ProjectProductCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectProductCreateRequestFromJson(json);
}
