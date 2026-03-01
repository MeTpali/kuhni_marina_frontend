import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute.freezed.dart';

/// Доменная сущность атрибута (характеристики товара).
@freezed
class Attribute with _$Attribute {
  const factory Attribute({
    required int id,
    required String name,
    String? unit,
  }) = _Attribute;
}
