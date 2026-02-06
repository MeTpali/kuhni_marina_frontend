enum Gender {
  F,
  M;

  @override
  String toString() => switch (this) {
        Gender.F => 'Женский',
        Gender.M => 'Мужской',
      };

  String tojsonString() => switch (this) {
        Gender.F => 'F',
        Gender.M => 'M',
      };

  static Gender fromString(String value) => switch (value) {
        'F' => Gender.F,
        'M' => Gender.M,
        _ => Gender.M,
      };
}
