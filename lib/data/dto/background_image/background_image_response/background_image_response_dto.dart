class BackgroundImageResponseDto {
  const BackgroundImageResponseDto({
    required this.id,
    required this.url,
    this.isActive = true,
    this.message,
  });

  final int id;
  final String url;
  final bool isActive;
  final String? message;

  factory BackgroundImageResponseDto.fromJson(Map<String, dynamic> json) =>
      BackgroundImageResponseDto(
        id: json['id'] as int,
        url: json['url'] as String,
        isActive: (json['is_active'] as bool?) ?? true,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'url': url,
    'is_active': isActive,
    'message': message,
  };
}
