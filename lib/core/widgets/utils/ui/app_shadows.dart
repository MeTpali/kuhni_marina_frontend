import 'package:flutter/material.dart';

abstract class AppShadows {
  static const soft = [
    BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: Color(0x1A1E2E23)),
    BoxShadow(offset: Offset(0, 8), blurRadius: 8, color: Color(0x171E2E23)),
    BoxShadow(offset: Offset(1, 17), blurRadius: 10, color: Color(0x0D1E2E23)),
    BoxShadow(offset: Offset(1, 31), blurRadius: 12, color: Color(0x031E2E23)),
    BoxShadow(offset: Offset(2, 48), blurRadius: 14, color: Color(0x001E2E23)),
  ];

  static const List<BoxShadow> glow = [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 11,
      color: Color(0x4D000000), // #0000004D
    ),
  ];

  static const List<BoxShadow> light = [
    BoxShadow(
      offset: Offset(0, 0),
      blurRadius: 70,
      color: Color(0x4D000000), // #0000004D
    ),
  ];
}
