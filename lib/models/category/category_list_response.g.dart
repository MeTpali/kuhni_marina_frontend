// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListResponseImpl _$$CategoryListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => CategoryTreeNode.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CategoryListResponseImplToJson(
  _$CategoryListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
