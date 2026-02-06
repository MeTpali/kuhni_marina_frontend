import 'package:freezed_annotation/freezed_annotation.dart';
import '../project_image/project_image_response.dart';

part 'project_detail_response.freezed.dart';
part 'project_detail_response.g.dart';

@freezed
class ProjectDetailResponse with _$ProjectDetailResponse {
  const factory ProjectDetailResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @Default([]) @JsonKey(name: 'images') List<ProjectImageResponse> images,
    @Default([]) @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  }) = _ProjectDetailResponse;

  factory ProjectDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailResponseFromJson(json);
}
