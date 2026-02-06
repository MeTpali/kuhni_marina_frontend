import 'package:flutter/material.dart';

class OverlayItem {
  final Widget widget;
  final double? leftOffset;
  final double? topOffset;
  final double? rightOffset;
  final double? bottomOffset;
  final AlignmentGeometry alignment;

  const OverlayItem({
    required this.widget,
    this.leftOffset,
    this.topOffset,
    this.rightOffset,
    this.bottomOffset,
    this.alignment = Alignment.center,
  });
}
