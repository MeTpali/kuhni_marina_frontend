import 'package:dio/dio.dart';

import '../../data/repositories/attributes/attributes_remote_repository.dart';
import '../../data/repositories/banners/banners_remote_repository.dart';
import '../../data/repositories/campaigns/campaigns_remote_repository.dart';
import '../../data/repositories/categories/categories_remote_repository.dart';
import '../../data/repositories/discounts/discounts_remote_repository.dart';
import '../../data/repositories/measure_requests/measure_requests_remote_repository.dart';
import '../../data/repositories/product_attributes/product_attributes_remote_repository.dart';
import '../../data/repositories/products/products_remote_repository.dart';
import '../../data/repositories/projects/projects_remote_repository.dart';
import '../../data/repositories/reviews/reviews_remote_repository.dart';
import '../../data/services/attributes/attributes_remote_service.dart';
import '../../data/services/banners/banners_remote_service.dart';
import '../../data/services/campaigns/campaigns_remote_service.dart';
import '../../data/services/categories/categories_remote_service.dart';
import '../../data/services/discounts/discounts_remote_service.dart';
import '../../data/services/measure_requests/measure_requests_remote_service.dart';
import '../../data/services/product_attributes/product_attributes_remote_service.dart';
import '../../data/services/products/products_remote_service.dart';
import '../../data/services/projects/projects_remote_service.dart';
import '../../data/services/reviews/reviews_remote_service.dart';
import '../../domain/repositories/i_attributes_repository.dart';
import '../../domain/repositories/i_banners_repository.dart';
import '../../domain/repositories/i_campaigns_repository.dart';
import '../../domain/repositories/i_categories_repository.dart';
import '../../domain/repositories/i_discounts_repository.dart';
import '../../domain/repositories/i_measure_requests_repository.dart';
import '../../domain/repositories/i_product_attributes_repository.dart';
import '../../domain/repositories/i_products_repository.dart';
import '../../domain/repositories/i_projects_repository.dart';
import '../../domain/repositories/i_reviews_repository.dart';
import 'di.dart';

void setupProdRepos() {
  /// Каталог — remote-сервисы и репозитории (требуют Dio)
  getIt.registerLazySingleton<CategoriesRemoteService>(
    () => CategoriesRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<ProductsRemoteService>(
    () => ProductsRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<AttributesRemoteService>(
    () => AttributesRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<BannersRemoteService>(
    () => BannersRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<MeasureRequestsRemoteService>(
    () => MeasureRequestsRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<CampaignsRemoteService>(
    () => CampaignsRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<DiscountsRemoteService>(
    () => DiscountsRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<ReviewsRemoteService>(
    () => ReviewsRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<ProductAttributesRemoteService>(
    () => ProductAttributesRemoteService(getIt<Dio>()),
  );
  getIt.registerLazySingleton<ProjectsRemoteService>(
    () => ProjectsRemoteService(getIt<Dio>()),
  );

  getIt.registerSingleton<ICategoriesRepository>(
    CategoriesRemoteRepository(service: getIt<CategoriesRemoteService>()),
  );
  getIt.registerSingleton<IProductsRepository>(
    ProductsRemoteRepository(service: getIt<ProductsRemoteService>()),
  );
  getIt.registerSingleton<IAttributesRepository>(
    AttributesRemoteRepository(service: getIt<AttributesRemoteService>()),
  );
  getIt.registerSingleton<IBannersRepository>(
    BannersRemoteRepository(service: getIt<BannersRemoteService>()),
  );
  getIt.registerSingleton<IMeasureRequestsRepository>(
    MeasureRequestsRemoteRepository(
      service: getIt<MeasureRequestsRemoteService>(),
    ),
  );
  getIt.registerSingleton<ICampaignsRepository>(
    CampaignsRemoteRepository(service: getIt<CampaignsRemoteService>()),
  );
  getIt.registerSingleton<IDiscountsRepository>(
    DiscountsRemoteRepository(service: getIt<DiscountsRemoteService>()),
  );
  getIt.registerSingleton<IProjectsRepository>(
    ProjectsRemoteRepository(service: getIt<ProjectsRemoteService>()),
  );
  getIt.registerSingleton<IReviewsRepository>(
    ReviewsRemoteRepository(service: getIt<ReviewsRemoteService>()),
  );
  getIt.registerSingleton<IProductAttributesRepository>(
    ProductAttributesRemoteRepository(
      service: getIt<ProductAttributesRemoteService>(),
    ),
  );
}
