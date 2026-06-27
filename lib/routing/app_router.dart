import 'package:auto_route/auto_route.dart';

import '../presentation/about/pages/about_page.dart';
import '../presentation/catalog/pages/catalog_page.dart';
import '../presentation/contacts/pages/contacts_page.dart';
import '../presentation/furniture/pages/furniture_page.dart';
import '../presentation/home/pages/home_page.dart';
import '../presentation/shell/main_shell_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainShellRoute.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home', initial: true),
        AutoRoute(page: CatalogRoute.page, path: 'catalog'),
        AutoRoute(page: FurnitureRoute.page, path: 'furniture'),
        AutoRoute(page: AboutRoute.page, path: 'about'),
        AutoRoute(page: ContactsRoute.page, path: 'contacts'),
      ],
    ),
  ];
}
