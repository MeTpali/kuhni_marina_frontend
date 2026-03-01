/// Преобразование из типа [F] в тип [T] (например, DTO → Entity).
abstract interface class IMapper<F, T> {
  T map(F from);
}
