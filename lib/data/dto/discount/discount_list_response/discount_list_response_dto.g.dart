// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountListResponseDtoImpl _$$DiscountListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => DiscountResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$DiscountListResponseDtoImplToJson(
  _$DiscountListResponseDtoImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'page_size': instance.pageSize,
  'total_pages': instance.totalPages,
  'message': instance.message,
};
