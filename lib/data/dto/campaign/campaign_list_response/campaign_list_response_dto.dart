import 'package:freezed_annotation/freezed_annotation.dart';
import '../campaign_response/campaign_response_dto.dart';

part 'campaign_list_response_dto.freezed.dart';
part 'campaign_list_response_dto.g.dart';

@freezed
class CampaignListResponseDto with _$CampaignListResponseDto {
  const factory CampaignListResponseDto({
    @JsonKey(name: 'items') required List<CampaignResponseDto> items,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _CampaignListResponseDto;

  factory CampaignListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CampaignListResponseDtoFromJson(json);
}
