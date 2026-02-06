import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Creates grid layouts with tiles that each have a minimum cross-axis extent.
///
/// This delegate will select a cross-axis extent for the tiles that is as
/// large as possible subject to the following conditions:
///
///  - The extent evenly divides the cross-axis extent of the grid.
///  - The extent is at least [minCrossAxisExtent].
///  - The number of tiles per row is maximized while respecting the minimum.
///
/// For example, if the grid is vertical, the grid is 500.0 pixels wide, and
/// [minCrossAxisExtent] is 150.0, this delegate will create a grid with 3
/// columns that are approximately 166.67 pixels wide (maximizing the number
/// of columns while ensuring each tile is at least 150.0 pixels wide).
///
/// This delegate creates grids with equally sized and spaced tiles.
///
/// See also:
///
///  * [SliverGridDelegateWithMaxCrossAxisExtent], which creates a layout with
///    a maximum cross-axis extent for tiles.
///  * [SliverGridDelegateWithFixedCrossAxisCount], which creates a layout with
///    a fixed number of tiles in the cross axis.
///  * [SliverGridDelegate], which creates arbitrary layouts.
///  * [GridView], which can use this delegate to control the layout of its
///    tiles.
///  * [SliverGrid], which can use this delegate to control the layout of its
///    tiles.
///  * [RenderSliverGrid], which can use this delegate to control the layout of
///    its tiles.
class SliverGridDelegateWithMinCrossAxisExtent extends SliverGridDelegate {
  /// Creates a delegate that makes grid layouts with tiles that have a minimum
  /// cross-axis extent.
  ///
  /// The [minCrossAxisExtent], [mainAxisExtent], [mainAxisSpacing],
  /// and [crossAxisSpacing] arguments must not be negative.
  /// The [childAspectRatio] argument must be greater than zero.
  const SliverGridDelegateWithMinCrossAxisExtent({
    required this.minCrossAxisExtent,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
    this.mainAxisExtent,
  }) : assert(
         minCrossAxisExtent > 0,
         'minCrossAxisExtent must be greater than zero',
       ),
       assert(mainAxisSpacing >= 0, 'mainAxisSpacing must be non-negative'),
       assert(crossAxisSpacing >= 0, 'crossAxisSpacing must be non-negative'),
       assert(
         childAspectRatio > 0,
         'childAspectRatio must be greater than zero',
       ),
       assert(
         mainAxisExtent == null || mainAxisExtent >= 0,
         'mainAxisExtent must be null or non-negative',
       );

  /// The minimum extent of tiles in the cross axis.
  ///
  /// This delegate will select a cross-axis extent for the tiles that is as
  /// large as possible subject to the following conditions:
  ///
  ///  - The extent evenly divides the cross-axis extent of the grid.
  ///  - The extent is at least [minCrossAxisExtent].
  ///  - The number of tiles per row is maximized while respecting the minimum.
  ///
  /// For example, if the grid is vertical, the grid is 500.0 pixels wide, and
  /// [minCrossAxisExtent] is 150.0, this delegate will create a grid with 3
  /// columns that are approximately 166.67 pixels wide.
  final double minCrossAxisExtent;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of logical pixels between each child along the cross axis.
  final double crossAxisSpacing;

  /// The ratio of the cross-axis to the main-axis extent of each child.
  final double childAspectRatio;

  /// The extent of each tile in the main axis. If provided it would define the
  /// logical pixels taken by each tile in the main-axis.
  ///
  /// If null, [childAspectRatio] is used instead.
  final double? mainAxisExtent;

  bool _debugAssertIsValid(double crossAxisExtent) {
    assert(crossAxisExtent > 0.0, 'crossAxisExtent must be greater than zero');
    assert(
      minCrossAxisExtent > 0.0,
      'minCrossAxisExtent must be greater than zero',
    );
    assert(mainAxisSpacing >= 0.0, 'mainAxisSpacing must be non-negative');
    assert(crossAxisSpacing >= 0.0, 'crossAxisSpacing must be non-negative');
    assert(
      childAspectRatio > 0.0,
      'childAspectRatio must be greater than zero',
    );
    return true;
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid(constraints.crossAxisExtent), '');

    // Calculate the maximum number of columns that can fit while ensuring
    // each tile is at least minCrossAxisExtent wide.
    // We use floor() to get the maximum number of columns.
    int crossAxisCount =
        (constraints.crossAxisExtent / (minCrossAxisExtent + crossAxisSpacing))
            .floor();

    // Ensure a minimum count of 1, can be zero and result in an infinite extent
    // below when the window size is 0 or too small.
    crossAxisCount = math.max(1, crossAxisCount);

    final double usableCrossAxisExtent = math.max(
      0.0,
      constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1),
    );
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent =
        mainAxisExtent ?? childCrossAxisExtent / childAspectRatio;

    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(SliverGridDelegateWithMinCrossAxisExtent oldDelegate) =>
      oldDelegate.minCrossAxisExtent != minCrossAxisExtent ||
      oldDelegate.mainAxisSpacing != mainAxisSpacing ||
      oldDelegate.crossAxisSpacing != crossAxisSpacing ||
      oldDelegate.childAspectRatio != childAspectRatio ||
      oldDelegate.mainAxisExtent != mainAxisExtent;
}
