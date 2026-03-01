// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerListResponseDtoImpl _$$BannerListResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BannerListResponseDtoImpl(
  items: (json['items'] as List<dynamic>)
      .map((e) => BannerResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$BannerListResponseDtoImplToJson(
  _$BannerListResponseDtoImpl instance,
) => <String, dynamic>{'items': instance.items, 'message': instance.message};
