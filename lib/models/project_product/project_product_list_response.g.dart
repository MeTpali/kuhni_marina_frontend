// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectProductListResponseImpl _$$ProjectProductListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProjectProductListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProjectProductResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$ProjectProductListResponseImplToJson(
  _$ProjectProductListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
