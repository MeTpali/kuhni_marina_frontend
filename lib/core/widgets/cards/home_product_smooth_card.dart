import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/product_card_sizes.dart';
import '../images/app_image.dart';
import 'glass_favorite_icon_button.dart';

/// Упрощённая карточка товара для горизонтальных списков на главной:
/// превью с переключением по hover, избранное, название и строка цены.
class HomeProductSmoothCard extends StatefulWidget {
  const HomeProductSmoothCard({
    required this.screenSize,
    required this.name,
    required this.images,
    required this.price,
    required this.imageSize,
    super.key,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  final ScreenSize screenSize;
  final String name;
  final List<String> images;
  /// Часть цены без префикса «Цена от» и без «₽» (как у полной карточки каталога).
  final String price;
  final double imageSize;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  State<HomeProductSmoothCard> createState() => _HomeProductSmoothCardState();
}

class _HomeProductSmoothCardState extends State<HomeProductSmoothCard> {
  static const Duration _fadeDuration = Duration(milliseconds: 420);
  static const double _nameFontSize = 31;

  int _imagePosition = 0;
  int? _lastHoverSegment;

  List<String> get _images =>
      widget.images.isEmpty ? [''] : widget.images;

  void _onImageAreaHover(Offset local, Size stackSize) {
    if (_images.length <= 1 || stackSize.width <= 0) return;
    final segment = (local.dx / stackSize.width * _images.length).floor().clamp(
          0,
          _images.length - 1,
        );
    if (segment == _lastHoverSegment || segment == _imagePosition) return;
    _lastHoverSegment = segment;
    setState(() => _imagePosition = segment);
  }

  void _onImageAreaExit() {
    _lastHoverSegment = null;
    if (_images.length <= 1 || _imagePosition == 0) return;
    setState(() => _imagePosition = 0);
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final nameStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppColors.base100,
          fontWeight: FontWeight.w600,
          fontSize: _nameFontSize,
        );
    final priceStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.base60,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        );

    final cardWidth = widget.imageSize;

    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: SizedBox(
              width: widget.imageSize,
              height: widget.imageSize,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final stackSize = Size(
                    constraints.maxWidth,
                    constraints.maxHeight,
                  );
                  return MouseRegion(
                    onHover: (event) =>
                        _onImageAreaHover(event.localPosition, stackSize),
                    onExit: (_) => _onImageAreaExit(),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        for (var i = 0; i < _images.length; i++)
                          AnimatedOpacity(
                            opacity: i == _imagePosition ? 1 : 0,
                            duration: _fadeDuration,
                            curve: Curves.easeInOutCubic,
                            child: IgnorePointer(
                              ignoring: i != _imagePosition,
                              child: AppImage(
                                url: _images[i],
                                width: double.infinity,
                                height: double.infinity,
                                borderRadius: s.cardBorderRadius,
                                backgroundColor: AppColors.primaryContainer,
                              ),
                            ),
                          ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: AppSpacing.sm,
                              right: AppSpacing.sm,
                            ),
                            child: GlassFavoriteIconButton(
                              screenSize: s,
                              isFavorite: widget.isFavorite,
                              onTap: widget.onFavoriteTap,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          GestureDetector(
            onTap: widget.onTap,
            child: Text(
              widget.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: nameStyle,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Цена от ${widget.price} ₽',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: priceStyle,
          ),
        ],
      ),
    );
  }
}
