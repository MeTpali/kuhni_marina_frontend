import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../shell/main_shell_scope.dart';
import '../background/home_animated_background.dart';
import '../sections/home_section_keys.dart';
import '../providers/background/home_background_providers.dart';
import '../sections/home_sections_column.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _sectionKeys = HomeSectionKeys();

  @override
  Widget build(BuildContext context) {
    final shellScope = MainShellScope.of(context);

    final backgroundImagesAsync = ref.watch(homeBackgroundImagesProvider);
    final backgroundImageUrls = backgroundImagesAsync.maybeWhen(
      data: (items) => items.map((e) => e.url).toList(),
      orElse: () => const <String>[],
    );

    final welcomeNavItems = buildHomeWelcomeNavItems(
      ref: ref,
      keys: _sectionKeys,
    );

    return Stack(
      fit: StackFit.expand,
      children: [
        const ColoredBox(color: AppColors.homePageBackground),
        Positioned.fill(
          child: HomeAnimatedBackground(urls: backgroundImageUrls),
        ),
        CustomScrollView(
          primary: true,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: shellScope.appBarTopInset),
              sliver: SliverToBoxAdapter(
                child: HomeSectionsColumn(
                  keys: _sectionKeys,
                  welcomeNavItems: welcomeNavItems,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
