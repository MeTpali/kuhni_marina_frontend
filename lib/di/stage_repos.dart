import 'package:get_it/get_it.dart';

import '../../data/repositories/attributes/attributes_test_repository.dart';
import '../../data/repositories/banners/banners_test_repository.dart';
import '../../data/repositories/categories/categories_test_repository.dart';
import '../../data/repositories/measure_requests/measure_requests_test_repository.dart';
import '../../data/repositories/products/products_test_repository.dart';
import '../../data/services/attributes/attributes_test_service.dart';
import '../../data/services/banners/banners_test_service.dart';
import '../../data/services/categories/categories_test_service.dart';
import '../../data/services/measure_requests/measure_requests_test_service.dart';
import '../../data/services/products/products_test_service.dart';
import '../../domain/repositories/i_attributes_repository.dart';
import '../../domain/repositories/i_banners_repository.dart';
import '../../domain/repositories/i_categories_repository.dart';
import '../../domain/repositories/i_measure_requests_repository.dart';
import '../../domain/repositories/i_products_repository.dart';

void setupStageRepos() {
  final getIt = GetIt.instance;

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
}
