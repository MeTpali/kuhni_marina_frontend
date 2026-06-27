import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/category_type/category_type.dart';
import '../../../../domain/repositories/i_categories_repository.dart';
import 'notifiers/home_categories_notifier.dart';
import 'notifiers/home_categories_state.dart';

/// Категории каталога для блока на главной ([CategoryType.kitchen] / [CategoryType.furniture]).
final homeCategoriesProvider = StateNotifierProvider.family<
    HomeCategoriesNotifier,
    HomeCategoriesState,
    CategoryType>((ref, categoryType) {
  final notifier = HomeCategoriesNotifier(
    categoriesRepository: getIt<ICategoriesRepository>(),
    categoryType: categoryType,
  );
  unawaited(notifier.load());
  return notifier;
});
