import '../../../../../domain/models/product/product_search_suggestion.dart';

enum SearchStatus { idle, loading, success, empty, error }

/// Состояние модального поиска по каталогу.
class SearchState {
  const SearchState({
    this.query = '',
    this.status = SearchStatus.idle,
    this.suggestions = const [],
    this.errorMessage,
  });

  final String query;
  final SearchStatus status;
  final List<ProductSearchSuggestion> suggestions;
  final String? errorMessage;

  bool get hasQuery => query.isNotEmpty;
  bool get isLoading => status == SearchStatus.loading;

  SearchState copyWith({
    String? query,
    SearchStatus? status,
    List<ProductSearchSuggestion>? suggestions,
    String? errorMessage,
    bool clearError = false,
  }) =>
      SearchState(
        query: query ?? this.query,
        status: status ?? this.status,
        suggestions: suggestions ?? this.suggestions,
        errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      );
}
