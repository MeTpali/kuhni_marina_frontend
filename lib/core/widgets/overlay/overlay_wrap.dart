import 'package:flutter/material.dart';

import 'overlay_item.dart';

class OverlayWrap extends StatelessWidget {
  final Widget child;
  final List<OverlayItem> overlayItems;
  const OverlayWrap({
    required this.overlayItems,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Stack(
    clipBehavior: Clip.none,
    children: [child, for (final item in overlayItems) _buildItem(item)],
  );

  Widget _buildItem(OverlayItem item) {
    final hasOffset =
        item.leftOffset == null ||
        item.topOffset == null ||
        item.rightOffset == null ||
        item.bottomOffset == null;
    if (hasOffset) {
      return Positioned(
        left: item.leftOffset,
        top: item.topOffset,
        right: item.rightOffset,
        bottom: item.bottomOffset,
        child: item.widget,
      );
    }

    return Align(alignment: item.alignment, child: item.widget);
  }
}
