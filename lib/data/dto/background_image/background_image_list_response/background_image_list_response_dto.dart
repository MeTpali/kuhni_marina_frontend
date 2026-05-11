import '../background_image_response/background_image_response_dto.dart';

class BackgroundImageListResponseDto {
  const BackgroundImageListResponseDto({
    required this.items,
    this.message,
  });

  final List<BackgroundImageResponseDto> items;
  final String? message;

  factory BackgroundImageListResponseDto.fromJson(Map<String, dynamic> json) {
    final rawItems = json['items'] as List<dynamic>? ?? const [];
    return BackgroundImageListResponseDto(
      items: rawItems
          .map(
            (item) => BackgroundImageResponseDto.fromJson(
              item as Map<String, dynamic>,
            ),
          )
          .toList(),
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'items': items.map((item) => item.toJson()).toList(),
    'message': message,
  };
}
