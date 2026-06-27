import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../../../../domain/repositories/i_products_repository.dart';
import 'notifiers/search_notifier.dart';
import 'notifiers/search_state.dart';

/// Модальный поиск по каталогу.
final searchProvider =
    StateNotifierProvider.autoDispose<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(
    productsRepository: getIt<IProductsRepository>(),
  ),
);
