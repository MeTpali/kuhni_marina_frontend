import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/product/product_catalog.dart';
import '../../../domain/models/product_type/product_type.dart';
import '../../../domain/models/project/project_catalog.dart';
import 'providers/portfolio/home_portfolio_providers.dart';
import 'providers/products/home_product_catalog_providers.dart';
import 'widgets/home_welcome_nav_panel.dart';

/// Ключи секций главной для scroll-to-section навигации.
class HomeSectionKeys {
  final kitchenCatalog = GlobalKey();
  final popularKitchens = GlobalKey();
  final newKitchens = GlobalKey();
  final furnitureCatalog = GlobalKey();
  final popularFurniture = GlobalKey();
  final newFurniture = GlobalKey();
  final portfolio = GlobalKey();
  final campaigns = GlobalKey();
  final designRequest = GlobalKey();
  final about = GlobalKey();

  void scrollTo(GlobalKey key, {double alignment = 0}) {
    final ctx = key.currentContext;
    if (ctx != null) {
      unawaited(
        Scrollable.ensureVisible(
          ctx,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
          alignment: alignment,
        ),
      );
    }
  }
}

bool _catalogHasProducts(AsyncValue<ProductCatalog> async) => async.maybeWhen(
  data: (catalog) => catalog.items.isNotEmpty,
  orElse: () => false,
);

bool _catalogHasProjects(AsyncValue<ProjectCatalog> async) => async.maybeWhen(
  data: (catalog) => catalog.items.isNotEmpty,
  orElse: () => false,
);

/// Пункты welcome-nav с учётом загруженных данных секций.
List<HomeWelcomeNavItem> buildHomeWelcomeNavItems({
  required WidgetRef ref,
  required HomeSectionKeys keys,
}) {
  final hitsKitchensAsync =
      ref.watch(homeProductHitsProvider(ProductType.kitchen));
  final newKitchensAsync =
      ref.watch(homeProductNewProvider(ProductType.kitchen));
  final hitsFurnitureAsync =
      ref.watch(homeProductHitsProvider(ProductType.furniture));
  final newFurnitureAsync =
      ref.watch(homeProductNewProvider(ProductType.furniture));
  final portfolioAsync = ref.watch(homePortfolioProvider);

  return [
    HomeWelcomeNavItem(
      label: 'Каталог кухонь',
      onTap: () => keys.scrollTo(keys.kitchenCatalog),
    ),
    if (_catalogHasProducts(hitsKitchensAsync))
      HomeWelcomeNavItem(
        label: 'Популярные кухни',
        onTap: () => keys.scrollTo(keys.popularKitchens),
      ),
    if (_catalogHasProducts(newKitchensAsync))
      HomeWelcomeNavItem(
        label: 'Новинки кухонь',
        onTap: () => keys.scrollTo(keys.newKitchens),
      ),
    HomeWelcomeNavItem(
      label: 'Каталог мебели',
      onTap: () => keys.scrollTo(keys.furnitureCatalog),
    ),
    if (_catalogHasProducts(hitsFurnitureAsync))
      HomeWelcomeNavItem(
        label: 'Популярная мебель',
        onTap: () => keys.scrollTo(keys.popularFurniture),
      ),
    if (_catalogHasProducts(newFurnitureAsync))
      HomeWelcomeNavItem(
        label: 'Новинки мебели',
        onTap: () => keys.scrollTo(keys.newFurniture),
      ),
    if (_catalogHasProjects(portfolioAsync))
      HomeWelcomeNavItem(
        label: 'Портфолио',
        onTap: () => keys.scrollTo(keys.portfolio),
      ),
    HomeWelcomeNavItem(
      label: 'Акции',
      onTap: () => keys.scrollTo(keys.campaigns),
    ),
    HomeWelcomeNavItem(
      label: 'Заказать проект',
      onTap: () => keys.scrollTo(keys.designRequest),
    ),
    HomeWelcomeNavItem(
      label: 'О компании',
      onTap: () => keys.scrollTo(keys.about),
    ),
  ];
}
