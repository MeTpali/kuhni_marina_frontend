import 'package:freezed_annotation/freezed_annotation.dart';
import '../discount_response/discount_response_dto.dart';

part 'discount_list_response_dto.freezed.dart';
part 'discount_list_response_dto.g.dart';

@freezed
class DiscountListResponseDto with _$DiscountListResponseDto {
  const factory DiscountListResponseDto({
    @JsonKey(name: 'items') required List<DiscountResponseDto> items,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _DiscountListResponseDto;

  factory DiscountListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DiscountListResponseDtoFromJson(json);
}
