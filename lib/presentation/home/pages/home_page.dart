import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../providers/home_providers.dart';
import '../widgets/home_banner_section.dart';
import '../widgets/home_footer.dart';
import '../widgets/home_products_section.dart';
import '../widgets/home_search_bar.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hitsAsync = ref.watch(homeHitsProvider);
    final newAsync = ref.watch(homeNewProductsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: AppSpacing.xl),
                const HomeBannerSection(),
                const SizedBox(height: AppSpacing.xl),
                const HomeSearchBar(),
                const SizedBox(height: AppSpacing.xxl),
                hitsAsync.when(
                  data: (catalog) => HomeProductsSection(
                    title: 'Популярные кухни',
                    productList: catalog.items,
                  ),
                  loading: () =>
                      const _SectionPlaceholder(title: 'Популярные кухни'),
                  error: (_, __) =>
                      const _SectionPlaceholder(title: 'Популярные кухни'),
                ),
                const SizedBox(height: AppSpacing.xxl),
                newAsync.when(
                  data: (catalog) => HomeProductsSection(
                    title: 'Новинки',
                    productList: catalog.items,
                  ),
                  loading: () => const _SectionPlaceholder(title: 'Новинки'),
                  error: (_, __) => const _SectionPlaceholder(title: 'Новинки'),
                ),
                const SizedBox(height: AppSpacing.xxl),
                const HomeFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionPlaceholder extends StatelessWidget {
  const _SectionPlaceholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: AppSpacing.lg),
          SizedBox(
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.lg),
              itemBuilder: (_, __) => const _ProductCardSkeleton(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductCardSkeleton extends StatelessWidget {
  const _ProductCardSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: AppColors.neutral10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 3, child: SizedBox()),
          SizedBox(height: 8),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
