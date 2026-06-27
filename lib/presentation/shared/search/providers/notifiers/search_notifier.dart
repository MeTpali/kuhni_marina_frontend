import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/repositories/i_products_repository.dart';
import 'search_state.dart';

/// Поисковые подсказки с debounce для модального окна поиска.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier({required IProductsRepository productsRepository})
      : _productsRepository = productsRepository,
        super(const SearchState());

  static const Duration debounce = Duration(milliseconds: 320);
  static const int suggestionsLimit = 20;

  final IProductsRepository _productsRepository;

  Timer? _debounceTimer;
  int _requestGeneration = 0;

  void onQueryChanged(String rawQuery) {
    _debounceTimer?.cancel();
    final query = rawQuery.trim();

    if (query.isEmpty) {
      _requestGeneration++;
      state = const SearchState();
      return;
    }

    state = state.copyWith(
      query: query,
      status: SearchStatus.loading,
      clearError: true,
    );

    _debounceTimer = Timer(debounce, () => unawaited(_fetchSuggestions(query)));
  }

  Future<void> _fetchSuggestions(String query) async {
    final generation = ++_requestGeneration;
    final result = await _productsRepository.getSearchSuggestions(
      query,
      limit: suggestionsLimit,
    );

    if (generation != _requestGeneration) return;
    if (state.query != query) return;

    state = result.when(
      success: (items) => state.copyWith(
        status: items.isEmpty ? SearchStatus.empty : SearchStatus.success,
        suggestions: items,
        clearError: true,
      ),
      error: (message) => state.copyWith(
        status: SearchStatus.error,
        suggestions: const [],
        errorMessage: message,
      ),
    );
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }
}
