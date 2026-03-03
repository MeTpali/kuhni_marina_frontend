import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_delete_response_dto.freezed.dart';
part 'discount_delete_response_dto.g.dart';

@freezed
class DiscountDeleteResponseDto with _$DiscountDeleteResponseDto {
  const factory DiscountDeleteResponseDto({
    @JsonKey(name: 'discount_id') required int discountId,
    @JsonKey(name: 'message') String? message,
  }) = _DiscountDeleteResponseDto;

  factory DiscountDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiscountDeleteResponseDtoFromJson(json);
}
