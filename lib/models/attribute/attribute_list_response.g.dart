// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttributeListResponseImpl _$$AttributeListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AttributeListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => AttributeResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$AttributeListResponseImplToJson(
  _$AttributeListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
