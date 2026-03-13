import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_image.freezed.dart';

@freezed
class ProjectImage with _$ProjectImage {
  const factory ProjectImage({
    required int id,
    required int projectId,
    required String imageUrl,
    @Default(false) bool isMain,
  }) = _ProjectImage;
}
