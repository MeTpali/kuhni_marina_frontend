import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/banner/banner.dart';
import '../../../../domain/repositories/i_banners_repository.dart';

/// Список баннеров для главной страницы (отсортированы по приоритету [position]).
final homeBannersProvider = FutureProvider<List<Banner>>((ref) async {
  final repo = getIt<IBannersRepository>();
  final result = await repo.getBanners();
  return result.when(
    success: (list) {
      final sorted = List<Banner>.from(list)
        ..sort((a, b) => a.position.compareTo(b.position));
      return sorted;
    },
    error: (message) => throw Exception(message),
  );
});
