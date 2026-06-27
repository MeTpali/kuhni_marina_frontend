import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/home_sizes.dart';
import '../../core/constants/screen_size.dart';
import '../../routing/app_router.dart';
import '../shared/search/widgets/search_modal.dart';
import 'widgets/shell_app_bar.dart';
import 'main_shell_scope.dart';
import 'widgets/main_shell_side_menu.dart';

@RoutePage()
class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openSearch() {
    unawaited(SearchModal.show(context));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final statusTop = MediaQuery.paddingOf(context).top;
    final appBarHeight = statusTop + screenSize.homeAppBarHeight;

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        CatalogRoute(),
        FurnitureRoute(),
        AboutRoute(),
        ContactsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return MainShellScope(
          appBarTopInset: appBarHeight,
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: AppColors.homePageBackground,
            extendBodyBehindAppBar: true,
            drawerScrimColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(appBarHeight),
              child: ShellAppBar(
                toolbarInnerHeight: screenSize.homeAppBarHeight,
                selectedNavIndex: tabsRouter.activeIndex,
                onSearchTap: _openSearch,
                onFavoritesTap: () {},
                onOpenDrawer: screenSize.isExpanded
                    ? null
                    : () => _scaffoldKey.currentState?.openEndDrawer(),
                onNavItemTap: tabsRouter.setActiveIndex,
              ),
            ),
            endDrawer: screenSize.isExpanded
                ? null
                : Drawer(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: MainShellSideMenu(
                      selectedIndex: tabsRouter.activeIndex,
                      onSelect: (index) {
                        Navigator.of(context).pop();
                        tabsRouter.setActiveIndex(index);
                      },
                    ),
                  ),
            body: child,
          ),
        );
      },
    );
  }
}
