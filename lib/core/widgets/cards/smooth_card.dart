import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/product_card_sizes.dart';
import '../../entities/discount/discount.dart';
import '../buttons/app_text_button.dart';
import '../images/app_image.dart';
import '../labels/card_label.dart';
import 'glass_favorite_icon_button.dart';

/// Карточка товара в каталоге
class SmoothCard extends StatefulWidget {
  /// Размер квадратного изображения (width == height).
  /// Если `null`, изображение растягивается на всё доступное пространство.
  final double? imageSize;

  /// Размер экрана
  final ScreenSize screenSize;

  /// Название продукта
  final String name;

  /// Название категории продукта
  final String categoryName;

  /// Список изображений продукта
  final List<String> images;

  /// Является новым товаром
  final bool isNew;

  /// Является популярным товаром
  final bool isHit;

  /// Цена без скидки
  final String price;

  /// Рейтинг продукта
  final double rating;

  /// Количество отзывов
  final int reviewsCount;

  /// Скидка на продукт
  final Discount? discount;

  /// Действие по нажатию на карточку
  final VoidCallback? onTap;

  /// Действие по нажатию на кнопку
  final VoidCallback? onPressed;

  /// Уже в избранном
  final bool isFavorite;

  /// Переключить избранное (кнопка на превью)
  final VoidCallback? onFavoriteTap;

  const SmoothCard({
    required this.screenSize,
    required this.name,
    required this.categoryName,
    required this.images,
    required this.isNew,
    required this.isHit,
    required this.price,
    required this.rating,
    required this.reviewsCount,
    this.discount,
    this.imageSize = 450,
    this.onTap,
    this.onPressed,
    this.isFavorite = false,
    this.onFavoriteTap,
  });

  @override
  State<SmoothCard> createState() => _SmoothCardState();
}

class _SmoothCardState extends State<SmoothCard> {
  static const Duration _fadeDuration = Duration(milliseconds: 420);
  static const double _priceFontSize = 20;

  int _imagePosition = 0;
  int? _lastHoverSegment;

  List<String> get _images => widget.images.isEmpty ? [''] : widget.images;

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
      fontSize: 26,
    );
    final priceStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
      color: AppColors.base100,
      fontWeight: FontWeight.w600,
      fontSize: _priceFontSize,
    );
    final categoryStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: AppColors.base60,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
    final orderProjectStyle = (categoryStyle ?? const TextStyle()).copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: AppColors.base60,
    );

    /// В горизонтальном ListView без явной ширины [Row] с [Expanded] получает бесконечный maxWidth.
    final cardWidth = widget.imageSize ?? 450;

    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: SizedBox(
              width: widget.imageSize ?? cardWidth,
              height: widget.imageSize ?? cardWidth,
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
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.md),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: AppSpacing.sm,
                                children: [
                                  if (widget.discount != null)
                                    CardLabel(
                                      title:
                                          '-${widget.discount!.discountPercent}%',
                                      color: AppColors.error,
                                      paddingHorizontal:
                                          s.labelPaddingHorizontal,
                                      paddingVertical: s.labelPaddingVertical,
                                      fontSize: s.labelFontSize,
                                    ),
                                  if (widget.isHit)
                                    CardLabel(
                                      title: 'ХИТ',
                                      color: AppColors.accent,
                                      paddingHorizontal:
                                          s.labelPaddingHorizontal,
                                      paddingVertical: s.labelPaddingVertical,
                                      fontSize: s.labelFontSize,
                                    ),
                                  if (widget.isNew)
                                    CardLabel(
                                      title: 'НОВИНКА',
                                      color: AppColors.accent,
                                      paddingHorizontal:
                                          s.labelPaddingHorizontal,
                                      paddingVertical: s.labelPaddingVertical,
                                      fontSize: s.labelFontSize,
                                    ),
                                ],
                              ),
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
            widget.categoryName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: categoryStyle,
          ),
          const SizedBox(height: AppSpacing.xs),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Expanded(
                child: Text(
                  'Цена от ${widget.price} ₽',
                  style: priceStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              AppTextButton(
                label: 'Заказать проект',
                style: orderProjectStyle,
                onPressed: widget.onPressed,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xxs),
          Divider(
            color: AppColors.divider,
            height: 1,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}
