import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/product_card_sizes.dart';
import '../../entities/discount/discount.dart';
import '../../utils/extensions/num_extension.dart';
import '../images/app_image.dart';
import '../labels/card_label.dart';
import '../types/bracing.dart';
import 'app_card.dart';

/// Карточка товара в каталоге
class ProductCard extends StatefulWidget {
  /// Высота карточки (включая метку новинка). Ширина считается по соотношению 150:200.
  final double? height;

  /// Размер экрана
  final ScreenSize screenSize;

  /// Название продукта
  final String name;

  /// Название продукта
  final String categoryName;

  /// Название продукта
  final List<String> images;

  /// Является новым товаром
  final bool isNew;

  /// Является новым товаром
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

  const ProductCard({
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
    this.height,
    this.onTap,
    this.onPressed,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late final PageController _controller;
  int _imagePosition = 0;
  int? _lastHoverSegment;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _images.length * 100);
    _controller.addListener(_imageScrollListener);
  }

  void _imageScrollListener() => setState(() {
    if ((_controller.page ?? 0).isInteger()) {
      _imagePosition = (_controller.page ?? 0).toInt() % _images.length;
    }
  });

  void _onImageAreaHover(double localDx, double width) {
    if (_images.length <= 1 || width <= 0) return;
    final segment = (localDx / width * _images.length).floor().clamp(0, _images.length - 1);
    if (segment == _lastHoverSegment) return;
    _lastHoverSegment = segment;
    final currentPage = _controller.page?.round() ?? _images.length * 100;
    final targetPage = (currentPage ~/ _images.length) * _images.length + segment;
    if (targetPage != currentPage) {
      _controller.animateToPage(
        targetPage,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
  }

  void _onImageAreaExit() {
    _lastHoverSegment = null;
    if (_images.length <= 1) return;
    final currentPage = _controller.page?.round() ?? _images.length * 100;
    final targetPage = (currentPage ~/ _images.length) * _images.length;
    if (targetPage != currentPage) {
      _controller.animateToPage(
        targetPage,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
  }

  List<String> get _images => widget.images.isEmpty ? [''] : widget.images;

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final height = widget.height ?? s.productCardDefaultHeight;
    final width = s.productCardWidthFromHeight(height);

    return GestureDetector(
      onTap: widget.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(s.cardBorderRadius),
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final w = constraints.maxWidth;
                    return MouseRegion(
                      onHover: (event) =>
                          _onImageAreaHover(event.localPosition.dx, w),
                      onExit: (_) => _onImageAreaExit(),
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _controller,
                            itemBuilder: (context, i) => AppImage(
                              url: _images[i % _images.length],
                              height: double.infinity,
                              width: double.infinity,
                              borderRadius: 0.0,
                              backgroundColor: AppColors.fairway,
                            ),
                          ),
                          Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: s.labelsPaddingBottom),
                        child: Column(
                          spacing: s.labelsSpacing,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.discount != null)
                              CardLabel(
                                title: '-${widget.discount!.discountPercent}%',
                                bracingType: BracingType.left,
                                color: AppColors.error,
                                paddingHorizontal: s.labelPaddingHorizontal,
                                paddingVertical: s.labelPaddingVertical,
                                fontSize: s.labelFontSize,
                              ),
                            if (widget.isHit)
                              CardLabel(
                                title: 'Хит',
                                bracingType: BracingType.left,
                                color: AppColors.accent,
                                paddingHorizontal: s.labelPaddingHorizontal,
                                paddingVertical: s.labelPaddingVertical,
                                fontSize: s.labelFontSize,
                              ),
                            if (widget.isNew)
                              CardLabel(
                                title: 'Новинка',
                                bracingType: BracingType.left,
                                color: AppColors.accent,
                                paddingHorizontal: s.labelPaddingHorizontal,
                                paddingVertical: s.labelPaddingVertical,
                                fontSize: s.labelFontSize,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
                  },
                ),
              ),
              AppCard(
                color: AppColors.surfaceElevated,
                bracingType: BracingType.top,
                contentPadding: s.contentPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      spacing: s.dotSpacing,
                      runSpacing: s.dotRunSpacing,
                      children: [
                        for (int i = 0; i < _images.length; i++)
                          _Dot(screenSize: s, isActive: i == _imagePosition),
                      ],
                    ),
                    SizedBox(height: s.dotsBottomGap),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: s.columnSpacing,
                      children: [
                        _Price(
                          screenSize: s,
                          price: widget.price,
                          discount: widget.discount,
                        ),
                        _Info(
                          screenSize: s,
                          name: widget.name,
                          categoryName: widget.categoryName,
                        ),
                        _Stats(
                          screenSize: s,
                          rating: widget.rating,
                          reviewsCount: widget.reviewsCount,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_imageScrollListener);
    _controller.dispose();
    super.dispose();
  }
}

class _Dot extends StatelessWidget {
  final ScreenSize screenSize;
  final bool isActive;
  const _Dot({required this.screenSize, required this.isActive});

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(10000),
    child: ColoredBox(
      color: isActive ? AppColors.fairway : AppColors.base40,
      child: SizedBox(height: screenSize.dotSize, width: screenSize.dotSize),
    ),
  );
}

class _Price extends StatelessWidget {
  final ScreenSize screenSize;
  final String price;
  final Discount? discount;
  const _Price({required this.screenSize, required this.price, this.discount});

  @override
  Widget build(BuildContext context) {
    if (discount != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${discount!.finalPrice} ₽',
            style: TextStyle(
              color: AppColors.error,
              fontSize: screenSize.priceFontSize,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(width: screenSize.priceGap),
          Text(
            '$price ₽',
            style: TextStyle(
              color: AppColors.onSurfaceTertiary,
              fontSize: screenSize.priceStrikethroughFontSize,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.onSurfaceTertiary,
            ),
          ),
        ],
      );
    }
    return Text(
      '$price ₽',
      style: TextStyle(
        color: AppColors.base100,
        fontSize: screenSize.priceFontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final ScreenSize screenSize;
  final String name;
  final String categoryName;
  const _Info({
    required this.screenSize,
    required this.name,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: screenSize.nameCategorySpacing,
    children: [
      Text(
        categoryName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: AppColors.base100,
          fontSize: screenSize.categoryFontSize,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: screenSize.nameHeight,
        child: Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.base100,
            fontSize: screenSize.nameFontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}

class _Stats extends StatelessWidget {
  final ScreenSize screenSize;
  final double rating;
  final int reviewsCount;
  const _Stats({
    required this.screenSize,
    required this.rating,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(
        Icons.star_rate_rounded,
        color: rating == 0 ? AppColors.base30 : AppColors.accent,
        size: screenSize.statsIconSize,
      ),
      Text(
        rating.toString(),
        style: TextStyle(
          fontSize: screenSize.statsFontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(width: screenSize.statsGap1),
Icon(
            Icons.chat_bubble,
            color: AppColors.onSurfaceTertiary,
            size: screenSize.statsIconSize,
          ),
          SizedBox(width: screenSize.statsGap2),
          Text(
            _reviewString(reviewsCount),
            style: TextStyle(
              fontSize: screenSize.statsFontSize,
              fontWeight: FontWeight.w600,
              color: AppColors.onSurfaceTertiary,
            ),
          ),
    ],
  );

  String _reviewString(int reviewsCount) {
    if (reviewsCount == 1) return '$reviewsCount отзыв';

    if (reviewsCount == 2 || reviewsCount == 3 || reviewsCount == 4) {
      return '$reviewsCount отзыва';
    }

    return '$reviewsCount отзывов';
  }
}
