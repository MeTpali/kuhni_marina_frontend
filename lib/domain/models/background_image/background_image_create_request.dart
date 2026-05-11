class BackgroundImageCreateRequest {
  const BackgroundImageCreateRequest({
    required this.url,
    this.isActive = true,
  });

  final String url;
  final bool isActive;
}
