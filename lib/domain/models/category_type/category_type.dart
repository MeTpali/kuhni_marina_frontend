/// Тип категории каталога (доменный enum, без привязки к API).
enum CategoryType {
  kitchen,
  furniture;

  String get name => switch (this) {
        CategoryType.kitchen => 'KITCHEN',
        CategoryType.furniture => 'FURNITURE',
      };

  static CategoryType fromName(String name) => CategoryType.values.firstWhere(
      (e) => e.name == name,
      orElse: () => CategoryType.kitchen,
    );
}
