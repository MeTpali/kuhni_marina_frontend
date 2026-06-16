import 'package:flutter/material.dart';

import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../domain/models/category/category_tree_node.dart';
import 'home_category_card.dart';

/// Плитка bento-сетки: позиция и размер в ячейках сетки.
class BentoTileSpan {
  const BentoTileSpan({
    required this.col,
    required this.row,
    required this.colSpan,
    required this.rowSpan,
  });

  final int col;
  final int row;
  final int colSpan;
  final int rowSpan;
}

/// Bento-сетка карточек категорий.
class HomeCategoriesBentoGrid extends StatelessWidget {
  const HomeCategoriesBentoGrid({
    required this.categories,
    required this.screenSize,
    super.key,
    this.onCategoryTap,
  });

  final List<CategoryTreeNode> categories;
  final ScreenSize screenSize;
  final void Function(CategoryTreeNode)? onCategoryTap;

  int _columnsFor(ScreenSize size) => switch (size) {
        ScreenSize.compact => 2,
        ScreenSize.medium => 3,
        ScreenSize.expanded => 4,
      };

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SizedBox.shrink();

    final columns = _columnsFor(screenSize);
    final spans = _generateLayout(categories.length, columns);
    final gap = screenSize.horizontalPadding * 0.75;
    final rowCount = spans.fold<int>(
      0,
      (max, s) => (s.row + s.rowSpan) > max ? s.row + s.rowSpan : max,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final cellWidth = (maxWidth - gap * (columns - 1)) / columns;
        final cellHeight = cellWidth * 0.92;
        final totalHeight = rowCount * cellHeight + (rowCount - 1) * gap;

        return SizedBox(
          height: totalHeight,
          child: Stack(
            children: [
              for (var i = 0; i < categories.length; i++)
                _positionedTile(
                  span: spans[i],
                  category: categories[i],
                  index: i,
                  cellWidth: cellWidth,
                  cellHeight: cellHeight,
                  gap: gap,
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _positionedTile({
    required BentoTileSpan span,
    required CategoryTreeNode category,
    required int index,
    required double cellWidth,
    required double cellHeight,
    required double gap,
  }) {
    final width = span.colSpan * cellWidth + (span.colSpan - 1) * gap;
    final height = span.rowSpan * cellHeight + (span.rowSpan - 1) * gap;
    final left = span.col * (cellWidth + gap);
    final top = span.row * (cellHeight + gap);

    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: HomeCategoryCard(
        category: category,
        screenSize: screenSize,
        revealIndex: index,
        textScale: span.colSpan >= 2 && span.rowSpan >= 2 ? 1.2 : 1,
        onTap: onCategoryTap != null ? () => onCategoryTap!(category) : null,
      ),
    );
  }

  static List<BentoTileSpan> _generateLayout(int itemCount, int columns) {
    return switch (columns) {
      4 => _generateLayout4Cols(itemCount),
      3 => _generateLayout3Cols(itemCount),
      _ => _generateLayoutGreedy(itemCount, columns),
    };
  }

  static int _bandHeight3Cols(int count, {bool sixItemBand = false}) {
    if (sixItemBand) return 3;
    return switch (count) {
      5 || 4 => 3,
      3 || 1 => 2,
      2 => 1,
      _ => 2,
    };
  }

  /// Полоса из 5 элементов (2×2 + четыре 1×1) для сетки 4×2.
  static List<BentoTileSpan> _fullBand4Cols(int baseRow) => [
        BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
        BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 3, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 3, row: baseRow + 1, colSpan: 1, rowSpan: 1),
      ];

  /// Полоса из 6 элементов: вместо 2×2 — 2×1 слева сверху и 2×1 справа снизу.
  /// ```
  /// [item0 2×1][item1][item2]
  /// [item3][item4][item5 2×1]
  /// ```
  static List<BentoTileSpan> _sixItemBand4Cols(int baseRow) => [
        BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 3, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 0, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 1, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 2, rowSpan: 1),
      ];

  /// Хвостовая полоса (меньше 5 элементов) — заполняет 4×2 без пустот.
  /// Формат плитки: colSpan × rowSpan (ширина × высота в ячейках).
  static List<BentoTileSpan> _tailBand4Cols(int baseRow, int count) {
    return switch (count) {
      5 => _fullBand4Cols(baseRow),
      4 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
          BentoTileSpan(col: 3, row: baseRow, colSpan: 1, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 2, rowSpan: 1),
        ],
      3 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 2, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 2, rowSpan: 1),
        ],
      2 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 2, rowSpan: 1),
        ],
      1 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
        ],
      _ => const [],
    };
  }

  /// Полоса из 5 элементов для сетки 3×3 (все три колонки задействованы).
  /// ```
  /// [item0 2×2][item1]
  /// [item0     ][item2]
  /// [item3][item4 2×1]
  /// ```
  static List<BentoTileSpan> _fullBand3Cols(int baseRow) => [
        BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
        BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 0, row: baseRow + 2, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 1, row: baseRow + 2, colSpan: 2, rowSpan: 1),
      ];

  /// Полоса из 6 элементов для 3 колонок (остаток 1).
  /// ```
  /// [item0 2×1][item1]
  /// [item2][item3][item4]
  /// [item5 2×1]
  /// ```
  static List<BentoTileSpan> _sixItemBand3Cols(int baseRow) => [
        BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 0, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 1, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        BentoTileSpan(col: 0, row: baseRow + 2, colSpan: 2, rowSpan: 1),
      ];

  /// Хвостовая полоса для 3 колонок.
  static List<BentoTileSpan> _tailBand3Cols(int baseRow, int count) {
    return switch (count) {
      5 => _fullBand3Cols(baseRow),
      4 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 1, rowSpan: 1),
          BentoTileSpan(col: 0, row: baseRow + 2, colSpan: 2, rowSpan: 1),
        ],
      3 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow + 1, colSpan: 1, rowSpan: 1),
        ],
      2 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 1),
          BentoTileSpan(col: 2, row: baseRow, colSpan: 1, rowSpan: 1),
        ],
      1 => [
          BentoTileSpan(col: 0, row: baseRow, colSpan: 2, rowSpan: 2),
        ],
      _ => const [],
    };
  }

  static List<BentoTileSpan> _generateLayout3Cols(int itemCount) {
    if (itemCount <= 0) return [];

    final remainder = itemCount % 5;

    if (remainder == 1 && itemCount > 1) {
      final spans = <BentoTileSpan>[];
      var baseRow = 0;
      final completeBands = itemCount ~/ 5 - 1;

      for (var band = 0; band < completeBands; band++) {
        spans.addAll(_fullBand3Cols(baseRow));
        baseRow += _bandHeight3Cols(5);
      }
      spans.addAll(_sixItemBand3Cols(baseRow));
      return spans;
    }

    final spans = <BentoTileSpan>[];
    var index = 0;
    var baseRow = 0;

    while (index < itemCount) {
      final remaining = itemCount - index;

      if (remaining > 5) {
        spans.addAll(_fullBand3Cols(baseRow));
        baseRow += _bandHeight3Cols(5);
        index += 5;
      } else {
        spans.addAll(_tailBand3Cols(baseRow, remaining));
        break;
      }
    }

    return spans;
  }

  static List<BentoTileSpan> _generateLayout4Cols(int itemCount) {
    if (itemCount <= 0) return [];

    final remainder = itemCount % 5;

    // Остался 1 элемент: не отдельный 2×2, а два 2×1 вместо 2×2 последней полосы.
    if (remainder == 1 && itemCount > 1) {
      final spans = <BentoTileSpan>[];
      final completeBands = itemCount ~/ 5 - 1;

      for (var band = 0; band < completeBands; band++) {
        spans.addAll(_fullBand4Cols(band * 2));
      }
      spans.addAll(_sixItemBand4Cols(completeBands * 2));
      return spans;
    }

    final spans = <BentoTileSpan>[];
    var index = 0;
    var band = 0;

    while (index < itemCount) {
      final remaining = itemCount - index;
      final baseRow = band * 2;

      if (remaining > 5) {
        spans.addAll(_fullBand4Cols(baseRow));
        index += 5;
        band++;
      } else {
        spans.addAll(_tailBand4Cols(baseRow, remaining));
        break;
      }
    }

    return spans;
  }

  /// Жадная раскладка для 2 и 3 колонок.
  static List<BentoTileSpan> _generateLayoutGreedy(int itemCount, int columns) {
    final spans = <BentoTileSpan>[];
    final occupied = <List<bool>>[];

    bool isFree(int row, int col, int colSpan, int rowSpan) {
      for (var r = row; r < row + rowSpan; r++) {
        if (r >= occupied.length) continue;
        for (var c = col; c < col + colSpan; c++) {
          if (c < occupied[r].length && occupied[r][c]) return false;
        }
      }
      return true;
    }

    void occupy(int row, int col, int colSpan, int rowSpan) {
      for (var r = row; r < row + rowSpan; r++) {
        while (occupied.length <= r) {
          occupied.add(List<bool>.filled(columns, false));
        }
        while (occupied[r].length < columns) {
          occupied[r].add(false);
        }
        for (var c = col; c < col + colSpan; c++) {
          occupied[r][c] = true;
        }
      }
    }

    ({int row, int col})? findSlot(int colSpan, int rowSpan) {
      for (var row = 0; row < 64; row++) {
        for (var col = 0; col <= columns - colSpan; col++) {
          if (isFree(row, col, colSpan, rowSpan)) {
            return (row: row, col: col);
          }
        }
      }
      return null;
    }

    void place(int colSpan, int rowSpan) {
      var slot = findSlot(colSpan, rowSpan);
      if (slot == null && (colSpan != 1 || rowSpan != 1)) {
        colSpan = 1;
        rowSpan = 1;
        slot = findSlot(1, 1);
      }
      if (slot == null) return;

      occupy(slot.row, slot.col, colSpan, rowSpan);
      spans.add(
        BentoTileSpan(
          col: slot.col,
          row: slot.row,
          colSpan: colSpan,
          rowSpan: rowSpan,
        ),
      );
    }

    final remainder = itemCount % 5;

    if (remainder == 1 && itemCount > 1) {
      final completeBands = itemCount ~/ 5 - 1;
      for (var band = 0; band < completeBands; band++) {
        for (var i = 0; i < 5; i++) {
          final featured = i == 0;
          place(featured ? 2.clamp(1, columns) : 1, featured ? 2 : 1);
        }
      }
      _placeSixItemBandGreedy(place: place, columns: columns);
      return spans;
    }

    final mainCount = itemCount - remainder;

    for (var i = 0; i < mainCount; i++) {
      final featured = i == 0 || i % 5 == 0;
      place(featured ? 2.clamp(1, columns) : 1, featured ? 2 : 1);
    }

    if (remainder > 0) {
      _placeTailGreedy(
        place: place,
        tailCount: remainder,
        columns: columns,
      );
    }

    return spans;
  }

  /// Шестой элемент вливается в последнюю полосу: два 2×1 вместо 2×2.
  static void _placeSixItemBandGreedy({
    required void Function(int colSpan, int rowSpan) place,
    required int columns,
  }) {
    final wide = 2.clamp(1, columns);

    place(wide, 1);
    place(1, 1);
    place(1, 1);
    place(1, 1);
    place(1, 1);
    place(wide, 1);
  }

  /// Хвост для 2–3 колонок: последние элементы растягиваем в 2×1, чтобы убрать дыры.
  static void _placeTailGreedy({
    required void Function(int colSpan, int rowSpan) place,
    required int tailCount,
    required int columns,
  }) {
    final wide = 2.clamp(1, columns);

    switch (tailCount) {
      case 2:
        place(wide, 1);
        place(wide, 1);
      case 3:
        place(wide, 2);
        place(1, 1);
        place(1, 1);
      case 4:
        place(wide, 2);
        place(1, 1);
        if (columns >= 3) place(1, 1);
        place(wide, 1);
      case 5:
        place(2.clamp(1, columns), 2);
        place(1, 1);
        place(1, 1);
        place(1, 1);
        place(1, 1);
      default:
        break;
    }
  }
}
