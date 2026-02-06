// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerDeleteResponseImpl _$$BannerDeleteResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BannerDeleteResponseImpl(
  bannerId: (json['banner_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$BannerDeleteResponseImplToJson(
  _$BannerDeleteResponseImpl instance,
) => <String, dynamic>{
  'banner_id': instance.bannerId,
  'message': instance.message,
};
