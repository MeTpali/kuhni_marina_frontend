import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/background_image/background_image.dart';
import '../../../../domain/repositories/i_background_images_repository.dart';

/// Фоновые изображения для анимированного фона на главной.
final homeBackgroundImagesProvider =
    FutureProvider<List<BackgroundImage>>((ref) async {
  final repo = getIt<IBackgroundImagesRepository>();
  final result = await repo.getBackgroundImages();
  return result.when(
    success: (list) => list.where((item) => item.isActive).toList(),
    error: (message) => throw Exception(message),
  );
});
