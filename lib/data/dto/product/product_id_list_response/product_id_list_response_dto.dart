import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_id_list_response_dto.freezed.dart';
part 'product_id_list_response_dto.g.dart';

@freezed
class ProductIdListResponseDto with _$ProductIdListResponseDto {
  const factory ProductIdListResponseDto({
    @JsonKey(name: 'product_ids') required List<int> productIds,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'message') String? message,
  }) = _ProductIdListResponseDto;

  factory ProductIdListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductIdListResponseDtoFromJson(json);
}
