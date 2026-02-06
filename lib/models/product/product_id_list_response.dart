import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_id_list_response.freezed.dart';
part 'product_id_list_response.g.dart';

@freezed
class ProductIdListResponse with _$ProductIdListResponse {
  const factory ProductIdListResponse({
    @JsonKey(name: 'product_ids') required List<int> productIds,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'message') String? message,
  }) = _ProductIdListResponse;

  factory ProductIdListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductIdListResponseFromJson(json);
}
