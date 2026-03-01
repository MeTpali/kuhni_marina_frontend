import 'package:get_it/get_it.dart';

import 'prod_di.dart';
import 'stage_di.dart';

final getIt = GetIt.instance;

enum BuildType {
  production,
  staging;

  static BuildType fromString(String parameter) => switch (parameter) {
        'production' => BuildType.production,
        'staging' => BuildType.staging,
        _ => BuildType.production,
      };

  bool isProduction() => this == BuildType.production;

  bool isStaging() => this == BuildType.staging;
}

void configureDependencies(BuildType build) {
  switch (build) {
    case BuildType.production:
      configureProdDependencies();
    case BuildType.staging:
      configureStageDependencies();
  }
}
