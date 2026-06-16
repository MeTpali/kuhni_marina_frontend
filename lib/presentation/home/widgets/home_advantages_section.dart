import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/parsers/icon_color_mapper.dart';
import '../../../core/widgets/cards/home_glass_card.dart';
import '../../../core/widgets/reveal/reveal_wrap.dart';
import 'home_section_backdrop.dart';
import 'home_section_split_layout.dart';

class _AdvantageItem {
  const _AdvantageItem({required this.iconAsset, required this.label});

  final String iconAsset;
  final String label;
}

/// Секция преимуществ: до 2 карточек в строке (1 — если места мало), ширина 200–300.
class HomeAdvantagesSection extends StatelessWidget {
  const HomeAdvantagesSection({super.key});

  static const _title = 'Что получает каждый клиент';

  static const _items = [
    _AdvantageItem(
      iconAsset: AppIcons.freeDesignProject,
      label: 'Бесплатный дизайн-проект',
    ),
    _AdvantageItem(iconAsset: AppIcons.yourSize, label: 'Под ваши размеры'),
    _AdvantageItem(
      iconAsset: AppIcons.noHiddenSurcharges,
      label: 'Без скрытых доплат',
    ),
    _AdvantageItem(iconAsset: AppIcons.exactDates, label: 'Точные сроки'),
    _AdvantageItem(
      iconAsset: AppIcons.turnkeyInstallation,
      label: 'Монтаж под ключ',
    ),
    _AdvantageItem(
      iconAsset: AppIcons.qualityAssurance,
      label: 'Гарантия качества',
    ),
  ];

  static const _maxCardsPerRow = 2;
  static const _minCardWidth = 200.0;
  static const _maxCardWidth = 300.0;
  static const _contentMaxWidth = 1100.0;
  static const _bodyMaxWidth = 640.0;

  static const _textShadows = [
    Shadow(color: Color(0x99000000), blurRadius: 10, offset: Offset(0, 2)),
    Shadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 1)),
  ];

  static int _cardsPerRowFor(double availableWidth, double gap) =>
      availableWidth >= 2 * _minCardWidth + gap ? _maxCardsPerRow : 1;

  static double _cardWidth(double availableWidth, double gap, int cardsPerRow) {
    if (cardsPerRow == 1) {
      return availableWidth.clamp(_minCardWidth, _maxCardWidth);
    }
    final raw = (availableWidth - gap) / cardsPerRow;
    return raw.clamp(_minCardWidth, _maxCardWidth);
  }

  static List<List<_AdvantageItem>> _chunkItems(int cardsPerRow) {
    final rows = <List<_AdvantageItem>>[];
    for (var i = 0; i < _items.length; i += cardsPerRow) {
      final end = (i + cardsPerRow).clamp(0, _items.length);
      rows.add(_items.sublist(i, end));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final horizontalPad = screenSize.horizontalPadding;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;
    final useSideBySide = screenSize.isMediumOrExpanded;
    final gap = horizontalPad * 0.75;
    final iconSize = switch (screenSize) {
      ScreenSize.compact => 36.0,
      ScreenSize.medium => 42.0,
      ScreenSize.expanded => 48.0,
    };

    final labelStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: screenSize.bodyLargeSize,
      height: 1.3,
      shadows: _textShadows,
    );

    final titleStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: screenSize.headlineMediumSize,
      shadows: _textShadows,
    );

    final cardsBody = LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth;
        final cardsPerRow = _cardsPerRowFor(availableWidth, gap);
        final cardWidth = _cardWidth(availableWidth, gap, cardsPerRow);
        final rows = _chunkItems(cardsPerRow);

        return Column(
          crossAxisAlignment: useSideBySide
              ? CrossAxisAlignment.stretch
              : CrossAxisAlignment.center,
          children: [
            for (var rowIndex = 0; rowIndex < rows.length; rowIndex++) ...[
              if (rowIndex > 0) SizedBox(height: gap),
              Row(
                mainAxisAlignment: useSideBySide
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (
                    var colIndex = 0;
                    colIndex < rows[rowIndex].length;
                    colIndex++
                  ) ...[
                    if (colIndex > 0) SizedBox(width: gap),
                    SizedBox(
                      width: cardWidth,
                      child: _AdvantageCard(
                        item: rows[rowIndex][colIndex],
                        index: rowIndex * cardsPerRow + colIndex,
                        iconSize: iconSize,
                        labelStyle: labelStyle,
                        contentGap: gap * 0.4,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ],
        );
      },
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: glassVerticalEdge),
        HomeSectionSplitLayout(
          horizontalPadding: horizontalPad,
          columnGap: screenSize.sectionTitleBottomSpacing * 1.25,
          sideBySide: useSideBySide,
          contentMaxWidth: _contentMaxWidth,
          bodyMaxWidth: _bodyMaxWidth,
          title: RevealWrap(
            key: const ValueKey('advantages-title'),
            variant: RevealEntranceVariant.fadeSlideFromTop,
            resetWhenLeavingViewport: true,
            child: Text(
              _title,
              style: titleStyle,
              textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
            ),
          ),
          body: cardsBody,
        ),
        SizedBox(height: glassVerticalEdge),
      ],
    );

    return HomeSectionBackdrop(
      style: HomeSectionBackdropStyle.glassDark,
      child: content,
    );
  }
}

class _AdvantageCard extends StatelessWidget {
  const _AdvantageCard({
    required this.item,
    required this.index,
    required this.iconSize,
    required this.labelStyle,
    required this.contentGap,
  });

  final _AdvantageItem item;
  final int index;
  final double iconSize;
  final TextStyle? labelStyle;
  final double contentGap;

  @override
  Widget build(BuildContext context) => RevealWrap(
    key: ValueKey('home-advantage-$index'),
    variant: RevealEntranceVariant.fade,
    resetWhenLeavingViewport: true,
    child: HomeGlassCard(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _ShadowedSvgIcon(asset: item.iconAsset, size: iconSize),
          SizedBox(width: contentGap),
          Expanded(
            child: Text(
              item.label,
              style: labelStyle,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    ),
  );
}

class _ShadowedSvgIcon extends StatelessWidget {
  const _ShadowedSvgIcon({required this.asset, required this.size});

  final String asset;
  final double size;

  static const _shadowColor = Color(0x99000000);

  @override
  Widget build(BuildContext context) {
    final icon = SvgPicture.asset(
      asset,
      width: size,
      height: size,
      colorMapper: const IconColorMapper(strokeColor: AppColors.white),
    );

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Transform.translate(
          offset: const Offset(0, 2),
          child: Opacity(
            opacity: 0.55,
            child: SvgPicture.asset(
              asset,
              width: size,
              height: size,
              colorMapper: const IconColorMapper(strokeColor: _shadowColor),
            ),
          ),
        ),
        icon,
      ],
    );
  }
}
