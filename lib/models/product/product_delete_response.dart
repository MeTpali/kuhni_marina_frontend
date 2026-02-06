import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_delete_response.freezed.dart';
part 'product_delete_response.g.dart';

@freezed
class ProductDeleteResponse with _$ProductDeleteResponse {
  const factory ProductDeleteResponse({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'message') String? message,
  }) = _ProductDeleteResponse;

  factory ProductDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDeleteResponseFromJson(json);
}
