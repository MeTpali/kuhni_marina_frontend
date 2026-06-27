import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/cards/home_glass_card.dart';
import '../../../../core/widgets/cards/smooth_icon_button.dart';
import '../../../../domain/models/product/product_search_suggestion.dart';
import '../providers/notifiers/search_state.dart';
import '../providers/search_providers.dart';
import 'search_bar.dart';
import 'search_suggestion_tile.dart';

/// Модальное окно поиска по каталогу.
class SearchModal extends ConsumerStatefulWidget {
  const SearchModal({super.key});

  static Future<void> show(BuildContext context) => showDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withValues(alpha: 0.12),
    builder: (_) => const SearchModal(),
  );

  @override
  ConsumerState<SearchModal> createState() => _SearchModalState();
}

class _SearchModalState extends ConsumerState<SearchModal> {
  static const double _resultsMaxHeightFactor = 0.48;
  static const double _resultsMinHeight = 140;

  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onQueryChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onQueryChanged);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onQueryChanged() {
    ref.read(searchProvider.notifier).onQueryChanged(_controller.text);
  }

  void _close() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    final searchState = ref.watch(searchProvider);
    final maxResultsHeight =
        MediaQuery.sizeOf(context).height * _resultsMaxHeightFactor;
    final listPadding = EdgeInsets.symmetric(
      horizontal: s.horizontalPadding * 0.35,
      vertical: s.horizontalPadding * 0.25,
    );

    final viewportWidth = MediaQuery.sizeOf(context).width;
    final contentWidth = s.homeSearchModalContentWidth(viewportWidth);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: s.horizontalPadding,
        vertical: s.sectionSpacing,
      ),
      child: SizedBox(
        width: contentWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: CatalogSearchBar(
                    controller: _controller,
                    focusNode: _focusNode,
                    autofocus: true,
                    includeOuterPadding: false,
                  ),
                ),
                SizedBox(width: s.horizontalPadding * 0.35),
                SmoothIconButton(
                  screenSize: s,
                  icon: Icons.close_rounded,
                  onTap: _close,
                  diameter: s.homeSearchBarOuterHeight,
                  hitPadding: EdgeInsets.zero,
                  iconSize: s.searchIconSize,
                ),
              ],
            ),
            SizedBox(height: s.horizontalPadding * 0.75),
            HomeGlassCard(
              hoverAnimation: false,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: _resultsMinHeight,
                  maxHeight: maxResultsHeight,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: _ResultsBody(
                    screenSize: s,
                    searchState: searchState,
                    listPadding: listPadding,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultsBody extends StatelessWidget {
  const _ResultsBody({
    required this.screenSize,
    required this.searchState,
    required this.listPadding,
  });

  final ScreenSize screenSize;
  final SearchState searchState;
  final EdgeInsets listPadding;

  @override
  Widget build(BuildContext context) {
    if (!searchState.hasQuery || searchState.status == SearchStatus.idle) {
      return _StatusMessage(
        screenSize: screenSize,
        icon: Icons.search_rounded,
        message: 'Введите название кухни или мебели',
      );
    }

    if (searchState.isLoading) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    if (searchState.status == SearchStatus.empty ||
        searchState.status == SearchStatus.error) {
      return _StatusMessage(
        screenSize: screenSize,
        icon: Icons.search_off_rounded,
        message: 'По вашему запросу ничего не найдено',
      );
    }

    return _SuggestionsList(
      screenSize: screenSize,
      suggestions: searchState.suggestions,
      padding: listPadding,
    );
  }
}

class _SuggestionsList extends StatelessWidget {
  const _SuggestionsList({
    required this.screenSize,
    required this.suggestions,
    required this.padding,
  });

  final ScreenSize screenSize;
  final List<ProductSearchSuggestion> suggestions;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: padding,
      clipBehavior: Clip.hardEdge,
      itemCount: suggestions.length,
      separatorBuilder: (_, __) => Divider(
        height: AppSpacing.md,
        thickness: 1,
        color: AppColors.outline.withValues(alpha: 0.65),
      ),
      itemBuilder: (context, index) {
        final item = suggestions[index];
        return SearchSuggestionTile(
          key: ValueKey('search-suggestion-${item.id}'),
          suggestion: item,
          screenSize: screenSize,
          onTap: () {},
        );
      },
    );
  }
}

class _StatusMessage extends StatelessWidget {
  const _StatusMessage({
    required this.screenSize,
    required this.icon,
    required this.message,
  });

  final ScreenSize screenSize;
  final IconData icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.horizontalPadding,
          vertical: screenSize.sectionSpacing,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: screenSize.searchIconSize * 1.6,
              color: AppColors.graphite.withValues(alpha: 0.72),
            ),
            SizedBox(height: screenSize.horizontalPadding * 0.5),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.graphite,
                fontSize: screenSize.bodyLargeSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
