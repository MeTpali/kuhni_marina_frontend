// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerDeleteResponseDtoImpl _$$BannerDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BannerDeleteResponseDtoImpl(
  bannerId: (json['banner_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$BannerDeleteResponseDtoImplToJson(
  _$BannerDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'banner_id': instance.bannerId,
  'message': instance.message,
};
