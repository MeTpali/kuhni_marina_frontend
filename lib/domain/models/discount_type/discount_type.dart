/// Тип скидки (доменный enum).
enum DiscountType {
  percentage,
  fixed;

  String get name => switch (this) {
        DiscountType.percentage => 'PERCENTAGE',
        DiscountType.fixed => 'FIXED',
      };

  static DiscountType fromName(String name) => DiscountType.values.firstWhere(
        (e) => e.name == name,
        orElse: () => DiscountType.percentage,
      );
}
