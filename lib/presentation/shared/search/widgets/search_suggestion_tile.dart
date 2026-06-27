import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/product_card_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/images/app_image.dart';
import '../../../../core/widgets/liquid_glass/liquid_glass.dart';
import '../../../../domain/models/product/product_search_suggestion.dart';

/// Плитка товара в выдаче поиска: превью + текст, hover по строке и по картинке.
class SearchSuggestionTile extends StatefulWidget {
  const SearchSuggestionTile({
    required this.suggestion,
    required this.screenSize,
    super.key,
    this.onTap,
  });

  final ProductSearchSuggestion suggestion;
  final ScreenSize screenSize;
  final VoidCallback? onTap;

  @override
  State<SearchSuggestionTile> createState() => _SearchSuggestionTileState();
}

class _SearchSuggestionTileState extends State<SearchSuggestionTile>
    with TickerProviderStateMixin {
  static const Duration _tileHoverDuration = Duration(milliseconds: 400);
  static const EdgeInsets _padNormal = EdgeInsets.zero;
  static const EdgeInsets _padHover = EdgeInsets.symmetric(vertical: 10);
  static const double _imageSize = 84;
  static const double _imageHoverScale = 0.9;
  static final double _imageSizeHovered = _imageSize * _imageHoverScale;

  late final AnimationController _tileController;
  late final AnimationController _imageController;
  late final Animation<EdgeInsetsGeometry> _padding;
  late final Animation<double> _imageSizeAnim;

  @override
  void initState() {
    super.initState();
    _tileController = AnimationController(
      vsync: this,
      duration: _tileHoverDuration,
    );
    _imageController = AnimationController(
      vsync: this,
      duration: LiquidGlassTokens.glassDuration,
    );

    _padding = EdgeInsetsGeometryTween(begin: _padNormal, end: _padHover)
        .animate(
          CurvedAnimation(
            parent: _tileController,
            curve: Curves.easeInOut,
            reverseCurve: Curves.easeInOut,
          ),
        );

    final imageCurve = CurvedAnimation(
      parent: _imageController,
      curve: LiquidGlassTokens.glassCurve,
      reverseCurve: LiquidGlassTokens.glassCurve,
    );
    _imageSizeAnim = Tween<double>(
      begin: _imageSize,
      end: _imageSizeHovered,
    ).animate(imageCurve);
  }

  @override
  void dispose() {
    _tileController.dispose();
    _imageController.dispose();
    super.dispose();
  }

  void _setTileHovered(bool hovered) {
    if (hovered) {
      _tileController.forward();
    } else {
      _tileController.reverse();
    }
  }

  void _setImageHovered(bool hovered) {
    if (hovered) {
      _imageController.forward();
    } else {
      _imageController.reverse();
    }
  }

  String get _priceLabel {
    final price = widget.suggestion.price?.trim();
    if (price == null || price.isEmpty) return 'Цена по запросу';
    return 'Цена от $price ₽';
  }

  Widget _buildLeading(ScreenSize s) {
    return SizedBox(
      width: _imageSize,
      height: _imageSize,
      child: MouseRegion(
        onEnter: (_) => _setImageHovered(true),
        onExit: (_) => _setImageHovered(false),
        cursor: SystemMouseCursors.click,
        child: Center(
          child: AnimatedBuilder(
            animation: _imageSizeAnim,
            builder: (context, _) {
              final size = _imageSizeAnim.value;
              return ClipRRect(
                borderRadius: BorderRadius.circular(s.cardBorderRadius),
                child: SizedBox(
                  width: size,
                  height: size,
                  child: AppImage(
                    url: widget.suggestion.image ?? '',
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                    borderRadius: s.cardBorderRadius,
                    backgroundColor: AppColors.primaryContainer,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.screenSize;
    final nameStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
      color: AppColors.base100,
      fontWeight: FontWeight.w600,
      fontSize: s.headlineSmallSize,
    );
    final priceStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: AppColors.base60,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );

    return MouseRegion(
      onEnter: (_) => _setTileHovered(true),
      onExit: (_) => _setTileHovered(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedBuilder(
          animation: _tileController,
          builder: (context, child) =>
              Padding(padding: _padding.value, child: child),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLeading(s),
              SizedBox(width: s.horizontalPadding * 0.5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.suggestion.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: nameStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _priceLabel,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: priceStyle,
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
}
