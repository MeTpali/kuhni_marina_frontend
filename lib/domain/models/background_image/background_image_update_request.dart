class BackgroundImageUpdateRequest {
  const BackgroundImageUpdateRequest({
    required this.url,
    this.isActive = true,
  });

  final String url;
  final bool isActive;
}
