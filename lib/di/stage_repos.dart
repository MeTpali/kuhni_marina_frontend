import '../../data/repositories/attributes/attributes_test_repository.dart';
import '../../data/repositories/banners/banners_test_repository.dart';
import '../../data/repositories/campaigns/campaigns_test_repository.dart';
import '../../data/repositories/categories/categories_test_repository.dart';
import '../../data/repositories/discounts/discounts_test_repository.dart';
import '../../data/repositories/measure_requests/measure_requests_test_repository.dart';
import '../../data/repositories/product_attributes/product_attributes_test_repository.dart';
import '../../data/repositories/products/products_test_repository.dart';
import '../../data/repositories/projects/projects_test_repository.dart';
import '../../data/repositories/reviews/reviews_test_repository.dart';
import '../../data/services/attributes/attributes_test_service.dart';
import '../../data/services/banners/banners_test_service.dart';
import '../../data/services/campaigns/campaigns_test_service.dart';
import '../../data/services/categories/categories_test_service.dart';
import '../../data/services/discounts/discounts_test_service.dart';
import '../../data/services/measure_requests/measure_requests_test_service.dart';
import '../../data/services/product_attributes/product_attributes_test_service.dart';
import '../../data/services/products/products_test_service.dart';
import '../../data/services/projects/projects_test_service.dart';
import '../../data/services/reviews/reviews_test_service.dart';
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
import '../data/repositories/session/session_repository.dart';
import '../data/repositories/session/session_test_repository.dart';
import 'di.dart';

void setupStageRepos() {
  getIt.registerSingleton<SessionRepository>(SessionTestRepository());

  /// Каталог — тестовые сервисы с моками
  getIt.registerSingleton<CategoriesTestService>(
    CategoriesTestService(addDelay: true),
  );
  getIt.registerSingleton<ProductsTestService>(
    ProductsTestService(addDelay: true),
  );
  getIt.registerSingleton<AttributesTestService>(
    AttributesTestService(addDelay: true),
  );
  getIt.registerSingleton<BannersTestService>(
    BannersTestService(addDelay: true),
  );
  getIt.registerSingleton<MeasureRequestsTestService>(
    MeasureRequestsTestService(addDelay: true),
  );
  getIt.registerSingleton<CampaignsTestService>(
    CampaignsTestService(addDelay: true),
  );
  getIt.registerSingleton<DiscountsTestService>(
    DiscountsTestService(addDelay: true),
  );
  getIt.registerSingleton<ProjectsTestService>(
    ProjectsTestService(addDelay: true),
  );
  getIt.registerSingleton<ReviewsTestService>(
    ReviewsTestService(addDelay: true),
  );
  getIt.registerSingleton<ProductAttributesTestService>(
    ProductAttributesTestService(addDelay: true),
  );

  getIt.registerSingleton<ICategoriesRepository>(
    CategoriesTestRepository(service: getIt<CategoriesTestService>()),
  );
  getIt.registerSingleton<IProductsRepository>(
    ProductsTestRepository(service: getIt<ProductsTestService>()),
  );
  getIt.registerSingleton<IAttributesRepository>(
    AttributesTestRepository(service: getIt<AttributesTestService>()),
  );
  getIt.registerSingleton<IBannersRepository>(
    BannersTestRepository(service: getIt<BannersTestService>()),
  );
  getIt.registerSingleton<IMeasureRequestsRepository>(
    MeasureRequestsTestRepository(service: getIt<MeasureRequestsTestService>()),
  );
  getIt.registerSingleton<ICampaignsRepository>(
    CampaignsTestRepository(service: getIt<CampaignsTestService>()),
  );
  getIt.registerSingleton<IDiscountsRepository>(
    DiscountsTestRepository(service: getIt<DiscountsTestService>()),
  );
  getIt.registerSingleton<IProjectsRepository>(
    ProjectsTestRepository(service: getIt<ProjectsTestService>()),
  );
  getIt.registerSingleton<IReviewsRepository>(
    ReviewsTestRepository(service: getIt<ReviewsTestService>()),
  );
  getIt.registerSingleton<IProductAttributesRepository>(
    ProductAttributesTestRepository(
      service: getIt<ProductAttributesTestService>(),
    ),
  );
}
