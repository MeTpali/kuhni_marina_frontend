import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/cards/home_project_smooth_card.dart';
import '../../../core/widgets/horizontal_scroll/horizontal_loop_carousel.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../domain/models/project/project.dart';
import '../providers/home_di.dart';
import 'home_section_backdrop.dart';
import 'home_section_more_button.dart';

/// Секция «Портфолио»: заголовок и горизонтальный список карточек проектов.
class HomePortfolioSection extends ConsumerWidget {
  const HomePortfolioSection({super.key, this.sectionKey, this.onMoreTap});

  final Key? sectionKey;
  final VoidCallback? onMoreTap;

  static Widget _keyedSection({required Key? key, required Widget child}) =>
      key != null ? KeyedSubtree(key: key, child: child) : child;

  static List<Project> _visibleProjects(List<Project> projects) =>
      projects.where((p) => p.name.trim().isNotEmpty).toList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsAsync = ref.watch(HomeDi.homePortfolioProvider);

    return projectsAsync.when(
      data: (catalog) {
        final projects = _visibleProjects(catalog.items);
        if (projects.isEmpty) return const SizedBox.shrink();

        return _keyedSection(
          key: sectionKey,
          child: _PortfolioContent(projects: projects, onMoreTap: onMoreTap),
        );
      },
      loading: () => const _SectionPlaceholder(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

class _PortfolioContent extends StatelessWidget {
  const _PortfolioContent({required this.projects, this.onMoreTap});

  final List<Project> projects;
  final VoidCallback? onMoreTap;

  static const String _title = 'Портфолио';
  static const String _moreLabel = 'Ещё больше проектов';

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final cardWidth = screenSize.homeProjectCardWidth;
    final listHeight = screenSize.homeProjectCarouselHeight;
    final gap = screenSize.horizontalPadding;
    const backdropStyle = HomeSectionBackdropStyle.glassLight;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: glassVerticalEdge),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.horizontalPadding,
          ),
          child: RevealWrap(
            key: const ValueKey('portfolio-title'),
            variant: RevealEntranceVariant.fadeSlideFromTop,
            resetWhenLeavingViewport: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.graphite,
                    fontWeight: FontWeight.w600,
                    fontSize: screenSize.headlineMediumSize,
                  ),
                ),
                HomeSectionMoreButton(
                  label: _moreLabel,
                  onPressed: onMoreTap,
                  iconSize: screenSize.labelLargeSize,
                  style:
                      Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.graphite,
                        fontWeight: FontWeight.w500,
                        fontSize: screenSize.labelLargeSize + 4,
                      ) ??
                      TextStyle(
                        color: AppColors.graphite,
                        fontWeight: FontWeight.w500,
                        fontSize: screenSize.labelLargeSize + 4,
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: screenSize.sectionTitleBottomSpacing),
        SizedBox(
          height: listHeight,
          child: HorizontalLoopCarousel<Project>(
            items: projects,
            itemKey: (p) => p.id,
            itemWidth: cardWidth,
            gap: gap,
            height: listHeight,
            screenSize: screenSize,
            itemBuilder: (context, project, index) => RevealWrap(
              key: ValueKey('portfolio-card-${project.id}-$index'),
              variant: RevealEntranceVariant.fade,
              resetWhenLeavingViewport: true,
              child: HomeProjectSmoothCard(
                screenSize: screenSize,
                cardWidth: cardWidth,
                name: project.name,
                imageUrl: project.image,
                onTap: () {},
              ),
            ),
          ),
        ),
        SizedBox(height: glassVerticalEdge),
      ],
    );

    return HomeSectionBackdrop(style: backdropStyle, child: content);
  }
}

class _SectionPlaceholder extends StatelessWidget {
  const _SectionPlaceholder();

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final cardWidth = screenSize.homeProjectCardWidth;
    final listHeight = screenSize.homeProjectCarouselHeight;
    final imageHeight = cardWidth / HomeSizes.homeProjectCardAspectRatio;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Портфолио',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppColors.accent,
              fontSize: screenSize.headlineSmallSize,
            ),
          ),
          SizedBox(height: screenSize.sectionTitleBottomSpacing),
          SizedBox(
            height: listHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) =>
                  SizedBox(width: screenSize.horizontalPadding),
              itemBuilder: (_, __) => Container(
                width: cardWidth,
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(
                    screenSize.cardBorderRadius,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: imageHeight),
                    const SizedBox(height: AppSpacing.lg),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
