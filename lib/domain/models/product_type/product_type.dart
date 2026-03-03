/// Тип товара (доменный enum).
enum ProductType {
  kitchen,
  furniture;

  String get name => switch (this) {
        ProductType.kitchen => 'KITCHEN',
        ProductType.furniture => 'FURNITURE',
      };

  static ProductType fromName(String name) => ProductType.values.firstWhere(
      (e) => e.name == name,
      orElse: () => ProductType.kitchen,
    );
}
