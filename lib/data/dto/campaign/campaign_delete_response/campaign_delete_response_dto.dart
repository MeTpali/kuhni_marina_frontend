import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_delete_response_dto.freezed.dart';
part 'campaign_delete_response_dto.g.dart';

@freezed
class CampaignDeleteResponseDto with _$CampaignDeleteResponseDto {
  const factory CampaignDeleteResponseDto({
    @JsonKey(name: 'campaign_id') required int campaignId,
    @JsonKey(name: 'message') String? message,
  }) = _CampaignDeleteResponseDto;

  factory CampaignDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CampaignDeleteResponseDtoFromJson(json);
}
