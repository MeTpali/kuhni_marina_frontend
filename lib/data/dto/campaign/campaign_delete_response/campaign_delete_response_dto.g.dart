// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignDeleteResponseDtoImpl _$$CampaignDeleteResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CampaignDeleteResponseDtoImpl(
  campaignId: (json['campaign_id'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$CampaignDeleteResponseDtoImplToJson(
  _$CampaignDeleteResponseDtoImpl instance,
) => <String, dynamic>{
  'campaign_id': instance.campaignId,
  'message': instance.message,
};
