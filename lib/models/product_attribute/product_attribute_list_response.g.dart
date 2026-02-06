// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductAttributeListResponseImpl _$$ProductAttributeListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProductAttributeListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProductAttributeResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProductAttributeListResponseImplToJson(
  _$ProductAttributeListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
