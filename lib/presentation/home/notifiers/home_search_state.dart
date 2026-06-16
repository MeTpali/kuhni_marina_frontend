import '../../../domain/models/product/product_search_suggestion.dart';

enum HomeSearchStatus { idle, loading, success, empty, error }

/// Состояние модального поиска на главной.
class HomeSearchState {
  const HomeSearchState({
    this.query = '',
    this.status = HomeSearchStatus.idle,
    this.suggestions = const [],
    this.errorMessage,
  });

  final String query;
  final HomeSearchStatus status;
  final List<ProductSearchSuggestion> suggestions;
  final String? errorMessage;

  bool get hasQuery => query.isNotEmpty;
  bool get isLoading => status == HomeSearchStatus.loading;

  HomeSearchState copyWith({
    String? query,
    HomeSearchStatus? status,
    List<ProductSearchSuggestion>? suggestions,
    String? errorMessage,
    bool clearError = false,
  }) {
    return HomeSearchState(
      query: query ?? this.query,
      status: status ?? this.status,
      suggestions: suggestions ?? this.suggestions,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
