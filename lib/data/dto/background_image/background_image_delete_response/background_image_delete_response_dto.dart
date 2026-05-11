class BackgroundImageDeleteResponseDto {
  const BackgroundImageDeleteResponseDto({
    required this.backgroundImageId,
    this.message,
  });

  final int backgroundImageId;
  final String? message;

  factory BackgroundImageDeleteResponseDto.fromJson(Map<String, dynamic> json) =>
      BackgroundImageDeleteResponseDto(
        backgroundImageId: json['background_image_id'] as int,
        message: json['message'] as String?,
      );
}
