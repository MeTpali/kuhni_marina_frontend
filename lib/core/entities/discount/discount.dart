import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';

@freezed
class Discount with _$Discount {
  const factory Discount({
    required String discountPercent,
    required String discountAmount,
    required String finalPrice,
  }) = _Discount;
}
