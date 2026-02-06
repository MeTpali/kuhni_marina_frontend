// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerListResponseImpl _$$BannerListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BannerListResponseImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => BannerResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$BannerListResponseImplToJson(
  _$BannerListResponseImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
