/// Область применения скидки (доменный enum).
enum DiscountScope {
  product,
  category,
  type,
  all;

  String get name => switch (this) {
        DiscountScope.product => 'PRODUCT',
        DiscountScope.category => 'CATEGORY',
        DiscountScope.type => 'TYPE',
        DiscountScope.all => 'ALL',
      };

  static DiscountScope fromName(String name) => DiscountScope.values.firstWhere(
        (e) => e.name == name,
        orElse: () => DiscountScope.all,
      );
}
