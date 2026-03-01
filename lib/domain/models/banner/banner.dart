import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

/// Доменная сущность баннера.
@freezed
class Banner with _$Banner {
  const factory Banner({
    required int id,
    required String title,
    required String imageUrl,
    String? linkUrl,
    @Default(0) int position,
    @Default(true) bool isActive,
  }) = _Banner;
}
