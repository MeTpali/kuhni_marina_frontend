class BackgroundImageCreateRequestDto {
  const BackgroundImageCreateRequestDto({
    required this.url,
    this.isActive = true,
  });

  final String url;
  final bool isActive;

  Map<String, dynamic> toJson() => {
    'url': url,
    'is_active': isActive,
  };
}
