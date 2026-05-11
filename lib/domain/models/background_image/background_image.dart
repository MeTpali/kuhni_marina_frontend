class BackgroundImage {
  const BackgroundImage({
    required this.id,
    required this.url,
    this.isActive = true,
  });

  final int id;
  final String url;
  final bool isActive;
}
